
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_input_entry {scalar_t__ protocol; void* inject_last; int * inject_first; struct proto_input_entry* next; } ;
struct dlil_threading_info {int input_waiting; int input_lck; } ;
typedef scalar_t__ protocol_family_t ;
typedef void* mbuf_t ;
typedef int errno_t ;
typedef int caddr_t ;


 int DLIL_INPUT_RUNNING ;
 int DLIL_PROTO_WAITING ;
 int ENOENT ;
 struct dlil_threading_info* dlil_main_input_thread ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int * mbuf_nextpkt (void*) ;
 int mbuf_setnextpkt (void*,void*) ;
 struct proto_input_entry** proto_hash ;
 int proto_hash_value (scalar_t__) ;
 int proto_total_waiting ;
 int wakeup (int ) ;

errno_t
proto_inject(protocol_family_t protocol, mbuf_t packet_list)
{
 struct proto_input_entry *entry;
 mbuf_t last_packet;
 int hash_slot = proto_hash_value(protocol);
 struct dlil_threading_info *inp = dlil_main_input_thread;

 for (last_packet = packet_list; mbuf_nextpkt(last_packet) != ((void*)0);
     last_packet = mbuf_nextpkt(last_packet))
                            ;

 for (entry = proto_hash[hash_slot]; entry != ((void*)0);
     entry = entry->next) {
  if (entry->protocol == protocol)
   break;
 }

 if (entry != ((void*)0)) {
  lck_mtx_lock(&inp->input_lck);
  if (entry->inject_first == ((void*)0)) {
   proto_total_waiting++;
   inp->input_waiting |= DLIL_PROTO_WAITING;
   entry->inject_first = packet_list;
  } else {
   mbuf_setnextpkt(entry->inject_last, packet_list);
  }
  entry->inject_last = last_packet;
  if ((inp->input_waiting & DLIL_INPUT_RUNNING) == 0) {
   wakeup((caddr_t)&inp->input_waiting);
  }
  lck_mtx_unlock(&inp->input_lck);
 } else {
  return (ENOENT);
 }

 return (0);
}
