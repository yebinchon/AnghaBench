
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist {size_t size; } ;



size_t
Curl_llist_count(struct curl_llist *list)
{
  return list->size;
}
