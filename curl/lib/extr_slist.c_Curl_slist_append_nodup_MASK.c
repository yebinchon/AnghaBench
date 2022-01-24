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
struct curl_slist {char* data; struct curl_slist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct curl_slist* FUNC1 (int) ; 
 struct curl_slist* FUNC2 (struct curl_slist*) ; 

struct curl_slist *FUNC3(struct curl_slist *list, char *data)
{
  struct curl_slist     *last;
  struct curl_slist     *new_item;

  FUNC0(data);

  new_item = FUNC1(sizeof(struct curl_slist));
  if(!new_item)
    return NULL;

  new_item->next = NULL;
  new_item->data = data;

  /* if this is the first item, then new_item *is* the list */
  if(!list)
    return new_item;

  last = FUNC2(list);
  last->next = new_item;
  return list;
}