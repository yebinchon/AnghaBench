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
struct linenoiseState {char* buf; int len; int pos; int /*<<< orphan*/  buflen; } ;
struct TYPE_4__ {scalar_t__ len; char** cvec; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ linenoiseCompletions ;

/* Variables and functions */
#define  ESC 129 
#define  TAB 128 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct linenoiseState*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct linenoiseState *ls) {
    linenoiseCompletions lc = { 0, NULL };
    int nread, nwritten;
    char c = 0;

    FUNC0(ls->buf,&lc);
    if (lc.len == 0) {
        FUNC3();
    } else {
        size_t stop = 0, i = 0;

        while(!stop) {
            /* Show completion or original buffer */
            if (i < lc.len) {
                struct linenoiseState saved = *ls;

                ls->len = ls->pos = FUNC6(lc.cvec[i]);
                ls->buf = lc.cvec[i];
                FUNC4(ls);
                ls->len = saved.len;
                ls->pos = saved.pos;
                ls->buf = saved.buf;
            } else {
                FUNC4(ls);
            }

            nread = FUNC1(&c, 1, 1, stdin);
            if (nread <= 0) {
                FUNC2(&lc);
                return -1;
            }

            switch(c) {
                case TAB: /* tab */
                    i = (i+1) % (lc.len+1);
                    if (i == lc.len) FUNC3();
                    break;
                case ESC: /* escape */
                    /* Re-show original buffer */
                    if (i < lc.len) FUNC4(ls);
                    stop = 1;
                    break;
                default:
                    /* Update buffer and return */
                    if (i < lc.len) {
                        nwritten = FUNC5(ls->buf,ls->buflen,"%s",lc.cvec[i]);
                        ls->len = ls->pos = nwritten;
                    }
                    stop = 1;
                    break;
            }
        }
    }

    FUNC2(&lc);
    return c; /* Return last read character */
}