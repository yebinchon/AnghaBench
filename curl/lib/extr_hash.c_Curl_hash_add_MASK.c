#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct curl_llist_element {scalar_t__ ptr; struct curl_llist_element* next; } ;
struct curl_llist {int /*<<< orphan*/  tail; struct curl_llist_element* head; } ;
struct curl_hash_element {int /*<<< orphan*/  list; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
struct curl_hash {int /*<<< orphan*/  size; scalar_t__ (* comp_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct curl_llist*,int /*<<< orphan*/ ,struct curl_hash_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_llist*,struct curl_llist_element*,void*) ; 
 struct curl_llist* FUNC2 (struct curl_hash*,void*,size_t) ; 
 struct curl_hash_element* FUNC3 (void*,size_t,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 

void *
FUNC5(struct curl_hash *h, void *key, size_t key_len, void *p)
{
  struct curl_hash_element  *he;
  struct curl_llist_element *le;
  struct curl_llist *l = FUNC2(h, key, key_len);

  for(le = l->head; le; le = le->next) {
    he = (struct curl_hash_element *) le->ptr;
    if(h->comp_func(he->key, he->key_len, key, key_len)) {
      FUNC1(l, le, (void *)h);
      --h->size;
      break;
    }
  }

  he = FUNC3(key, key_len, p);
  if(he) {
    FUNC0(l, l->tail, he, &he->list);
    ++h->size;
    return p; /* return the new entry */
  }

  return NULL; /* failure */
}