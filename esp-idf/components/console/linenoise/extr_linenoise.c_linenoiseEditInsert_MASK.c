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
struct linenoiseState {size_t len; size_t buflen; size_t pos; char* buf; scalar_t__ plen; scalar_t__ cols; } ;

/* Variables and functions */
 int FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hintsCallback ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  mlmode ; 
 int /*<<< orphan*/  FUNC2 (struct linenoiseState*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3(struct linenoiseState *l, char c) {
    if (l->len < l->buflen) {
        if (l->len == l->pos) {
            l->buf[l->pos] = c;
            l->pos++;
            l->len++;
            l->buf[l->len] = '\0';
            if ((!mlmode && l->plen+l->len < l->cols && !hintsCallback)) {
                /* Avoid a full update of the line in the
                 * trivial case. */
                if (FUNC0(&c,1,1,stdout) == -1) return -1;
            } else {
                FUNC2(l);
            }
        } else {
            FUNC1(l->buf+l->pos+1,l->buf+l->pos,l->len-l->pos);
            l->buf[l->pos] = c;
            l->len++;
            l->pos++;
            l->buf[l->len] = '\0';
            FUNC2(l);
        }
    }
    return 0;
}