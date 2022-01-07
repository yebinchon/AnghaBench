
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct curl_hash_iterator {int slot_index; TYPE_2__* current_element; struct curl_hash* hash; } ;
struct curl_hash_element {int dummy; } ;
struct curl_hash {int slots; TYPE_1__* table; } ;
struct TYPE_4__ {struct curl_hash_element* ptr; struct TYPE_4__* next; } ;
struct TYPE_3__ {TYPE_2__* head; } ;



struct curl_hash_element *
Curl_hash_next_element(struct curl_hash_iterator *iter)
{
  struct curl_hash *h = iter->hash;


  if(iter->current_element)
    iter->current_element = iter->current_element->next;


  if(!iter->current_element) {
    int i;
    for(i = iter->slot_index; i < h->slots; i++) {
      if(h->table[i].head) {
        iter->current_element = h->table[i].head;
        iter->slot_index = i + 1;
        break;
      }
    }
  }

  if(iter->current_element) {
    struct curl_hash_element *he = iter->current_element->ptr;
    return he;
  }
  iter->current_element = ((void*)0);
  return ((void*)0);
}
