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
typedef  struct List* var ;
struct List {scalar_t__ nitems; struct List* head; int /*<<< orphan*/ * tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct List*,struct List*) ; 
 struct List** FUNC1 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC2 (struct List*) ; 

__attribute__((used)) static void FUNC3(var self) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    var next = *FUNC1(l, item);
	  FUNC2(item);
    FUNC0(l, item);
    item = next;
  }
  l->tail = NULL;
  l->head = NULL;
  l->nitems = 0;
}