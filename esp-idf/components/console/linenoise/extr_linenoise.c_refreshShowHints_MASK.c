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
struct linenoiseState {scalar_t__ len; scalar_t__ cols; int /*<<< orphan*/  buf; } ;
struct abuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 
 int FUNC4 (char*) ; 

void FUNC5(struct abuf *ab, struct linenoiseState *l, int plen) {
    char seq[64];
    if (&hintsCallback && plen+l->len < l->cols) {
        int color = -1, bold = 0;
        char *hint = FUNC2(l->buf,&color,&bold);
        if (hint) {
            int hintlen = FUNC4(hint);
            int hintmaxlen = l->cols-(plen+l->len);
            if (hintlen > hintmaxlen) hintlen = hintmaxlen;
            if (bold == 1 && color == -1) color = 37;
            if (color != -1 || bold != 0)
                FUNC3(seq,64,"\033[%d;%d;49m",bold,color);
            FUNC0(ab,seq,FUNC4(seq));
            FUNC0(ab,hint,hintlen);
            if (color != -1 || bold != 0)
                FUNC0(ab,"\033[0m",4);
            /* Call the function to free the hint returned. */
            if (&freeHintsCallback) FUNC1(hint);
        }
    }
}