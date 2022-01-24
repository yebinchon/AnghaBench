#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  L; } ;
struct TYPE_11__ {TYPE_5__* ls; TYPE_1__* bl; } ;
struct TYPE_10__ {int n; TYPE_2__* arr; } ;
struct TYPE_9__ {int /*<<< orphan*/  line; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int firstlabel; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_3__ Labellist ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char const*) ; 

__attribute__((used)) static void FUNC4 (FuncState *fs, Labellist *ll, TString *label) {
  int i;
  for (i = fs->bl->firstlabel; i < ll->n; i++) {
    if (FUNC0(label, ll->arr[i].name)) {
      const char *msg = FUNC2(fs->ls->L,
                          "label '%s' already defined on line %d",
                          FUNC1(label), ll->arr[i].line);
      FUNC3(fs->ls, msg);
    }
  }
}