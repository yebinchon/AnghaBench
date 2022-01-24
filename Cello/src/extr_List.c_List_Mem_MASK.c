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
struct List {struct List* head; } ;

/* Variables and functions */
 struct List** FUNC0 (struct List*,struct List*) ; 
 scalar_t__ FUNC1 (struct List*,struct List*) ; 

__attribute__((used)) static bool FUNC2(var self, var obj) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    if (FUNC1(item, obj)) { return true; }
    item = *FUNC0(l, item);
  }
  return false;
}