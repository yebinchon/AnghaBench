
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash_iterator {int * current_element; scalar_t__ slot_index; struct curl_hash* hash; } ;
struct curl_hash {int dummy; } ;



void Curl_hash_start_iterate(struct curl_hash *hash,
                             struct curl_hash_iterator *iter)
{
  iter->hash = hash;
  iter->slot_index = 0;
  iter->current_element = ((void*)0);
}
