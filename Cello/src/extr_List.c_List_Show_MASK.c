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
 int FUNC1 (struct List*,int,char*,...) ; 

__attribute__((used)) static int FUNC2(var self, var output, int pos) {
  struct List* l = self;
  pos = FUNC1(output, pos, "<'List' At 0x%p [", self);
  var item = l->head;
  while (item) {
    pos = FUNC1(output, pos, "%$", item);
    item = *FUNC0(l, item);
    if (item) { pos = FUNC1(output, pos, ", "); }
  }
  return FUNC1(output, pos, "]>");
}