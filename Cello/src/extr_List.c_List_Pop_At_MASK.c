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
struct List {int /*<<< orphan*/  nitems; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 struct List* FUNC0 (struct List*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC2 (struct List*,struct List*) ; 
 int /*<<< orphan*/  FUNC3 (struct List*) ; 
 int /*<<< orphan*/  FUNC4 (struct List*) ; 

__attribute__((used)) static void FUNC5(var self, var key) {

  struct List* l = self;
  int64_t i = FUNC3(key);
  
  var item = FUNC0(l, i);
  FUNC2(l, item);
  FUNC4(item);
  FUNC1(l, item);
  l->nitems--;
}