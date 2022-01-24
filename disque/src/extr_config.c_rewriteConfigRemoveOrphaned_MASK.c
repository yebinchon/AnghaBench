#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int /*<<< orphan*/ * lines; int /*<<< orphan*/  rewritten; int /*<<< orphan*/  option_to_line; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC12(struct rewriteConfigState *state) {
    dictIterator *di = FUNC1(state->option_to_line);
    dictEntry *de;

    while((de = FUNC4(di)) != NULL) {
        list *l = FUNC3(de);
        sds option = FUNC2(de);

        /* Don't blank lines about options the rewrite process
         * don't understand. */
        if (FUNC0(state->rewritten,option) == NULL) {
            FUNC11(LL_DEBUG,"Not rewritten option: %s", option);
            continue;
        }

        while(FUNC8(l)) {
            listNode *ln = FUNC7(l);
            int linenum = (long) ln->value;

            FUNC10(state->lines[linenum]);
            state->lines[linenum] = FUNC9();
            FUNC6(l,ln);
        }
    }
    FUNC5(di);
}