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
typedef  int /*<<< orphan*/  uint64_t ;
struct List {size_t nitems; struct List* head; } ;

/* Variables and functions */
 struct List** FUNC0 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC1 (struct List*) ; 

__attribute__((used)) static uint64_t FUNC2(var self) {
  struct List* l = self;
  uint64_t h = 0;
  
  var item = l->head;
  for (size_t i = 0; i < l->nitems; i++) {
    h ^= FUNC1(item);
    item = *FUNC0(l, item);
  }
  
  return h;
}