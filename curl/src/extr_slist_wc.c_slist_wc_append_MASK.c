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
struct slist_wc {struct curl_slist* last; struct curl_slist* first; } ;
struct curl_slist {struct curl_slist* next; } ;

/* Variables and functions */
 struct curl_slist* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_slist*) ; 
 struct slist_wc* FUNC2 (int) ; 

struct slist_wc *FUNC3(struct slist_wc *list,
                                 const char *data)
{
  struct curl_slist *new_item = FUNC0(NULL, data);

  if(!new_item)
    return NULL;

  if(!list) {
    list = FUNC2(sizeof(struct slist_wc));

    if(!list) {
      FUNC1(new_item);
      return NULL;
    }

    list->first = new_item;
    list->last = new_item;
    return list;
  }

  list->last->next = new_item;
  list->last = list->last->next;
  return list;
}