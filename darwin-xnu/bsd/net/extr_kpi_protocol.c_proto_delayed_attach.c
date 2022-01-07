
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_input_entry {scalar_t__ protocol; struct proto_input_entry* next; int (* detached ) (scalar_t__) ;} ;


 int FREE (struct proto_input_entry*,int ) ;
 int M_IFADDR ;
 struct proto_input_entry** proto_hash ;
 int proto_hash_value (scalar_t__) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
proto_delayed_attach(struct proto_input_entry *entry)
{
 struct proto_input_entry *next_entry;

 for (next_entry = entry->next; entry != ((void*)0); entry = next_entry) {
  struct proto_input_entry *exist;
  int hash_slot;

  hash_slot = proto_hash_value(entry->protocol);
  next_entry = entry->next;

  for (exist = proto_hash[hash_slot]; exist != ((void*)0);
      exist = exist->next) {
   if (exist->protocol == entry->protocol)
    break;
  }


  if (exist != ((void*)0)) {
   if (entry->detached)
    entry->detached(entry->protocol);
   FREE(entry, M_IFADDR);
  } else {
   entry->next = proto_hash[hash_slot];
   proto_hash[hash_slot] = entry;
  }
 }
}
