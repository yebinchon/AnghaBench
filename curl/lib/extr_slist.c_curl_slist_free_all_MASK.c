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
struct curl_slist {int /*<<< orphan*/  data; struct curl_slist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_slist*) ; 

void FUNC2(struct curl_slist *list)
{
  struct curl_slist     *next;
  struct curl_slist     *item;

  if(!list)
    return;

  item = list;
  do {
    next = item->next;
    FUNC0(item->data);
    FUNC1(item);
    item = next;
  } while(next);
}