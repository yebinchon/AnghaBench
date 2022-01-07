
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_input_entry {scalar_t__ protocol; TYPE_1__* domain; int (* input ) (scalar_t__,int *) ;scalar_t__ chain; struct proto_input_entry* next; } ;
typedef scalar_t__ protocol_family_t ;
typedef int * mbuf_t ;
typedef int errno_t ;
struct TYPE_2__ {int dom_flags; int dom_mtx; } ;


 int DOM_REENTRANT ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int * mbuf_nextpkt (int *) ;
 int mbuf_setnextpkt (int *,int *) ;
 struct proto_input_entry** proto_hash ;
 size_t proto_hash_value (scalar_t__) ;
 int stub1 (scalar_t__,int *) ;
 int stub2 (scalar_t__,int *) ;

errno_t
proto_input(protocol_family_t protocol, mbuf_t packet_list)
{
 struct proto_input_entry *entry;
 errno_t locked = 0, result = 0;

 for (entry = proto_hash[proto_hash_value(protocol)]; entry != ((void*)0);
     entry = entry->next) {
  if (entry->protocol == protocol)
   break;
 }

 if (entry == ((void*)0))
  return (-1);

 if (entry->domain && !(entry->domain->dom_flags & DOM_REENTRANT)) {
  lck_mtx_lock(entry->domain->dom_mtx);
  locked = 1;
 }

 if (entry->chain) {
  entry->input(entry->protocol, packet_list);
 } else {
  mbuf_t packet;

  for (packet = packet_list; packet != ((void*)0);
      packet = packet_list) {
   packet_list = mbuf_nextpkt(packet);
   mbuf_setnextpkt(packet, ((void*)0));
   entry->input(entry->protocol, packet);
  }
 }

 if (locked) {
  lck_mtx_unlock(entry->domain->dom_mtx);
 }
 return (result);
}
