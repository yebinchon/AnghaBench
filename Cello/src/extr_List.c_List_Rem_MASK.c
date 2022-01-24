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
struct List {int /*<<< orphan*/  nitems; struct List* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct List*,struct List*) ; 
 struct List** FUNC1 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC2 (struct List*,struct List*) ; 
 int /*<<< orphan*/  ValueError ; 
 int /*<<< orphan*/  FUNC3 (struct List*) ; 
 scalar_t__ FUNC4 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct List*) ; 

__attribute__((used)) static void FUNC6(var self, var obj) {
  struct List* l = self;
  var item = l->head;
  while (item) {
    if (FUNC4(item, obj)) {
      FUNC2(l, item);
      FUNC3(item);
      FUNC0(l, item);
      l->nitems--;
      return;
    }
    item = *FUNC1(l, item);
  }
  
  FUNC5(ValueError, "Object %$ not in List!", obj);
}