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
struct linenoiseState {int plen; int len; int cols; int oldpos; int maxrows; char* prompt; char* buf; int pos; } ;
struct abuf {int /*<<< orphan*/  len; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct abuf*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct abuf*,struct linenoiseState*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct linenoiseState *l) {
    char seq[64];
    int plen = l->plen;
    int rows = (plen+l->len+l->cols-1)/l->cols; /* rows used by current buf. */
    int rpos = (plen+l->oldpos+l->cols)/l->cols; /* cursor relative row. */
    int rpos2; /* rpos after refresh. */
    int col; /* colum position, zero-based. */
    int old_rows = l->maxrows;
    int j;
    struct abuf ab;

    /* Update maxrows if needed. */
    if (rows > (int)l->maxrows) l->maxrows = rows;

    /* First step: clear all the lines used before. To do so start by
     * going to the last row. */
    FUNC2(&ab);
    if (old_rows-rpos > 0) {
        FUNC4("go down %d", old_rows-rpos);
        FUNC6(seq,64,"\x1b[%dB", old_rows-rpos);
        FUNC0(&ab,seq,FUNC7(seq));
    }

    /* Now for every row clear it, go up. */
    for (j = 0; j < old_rows-1; j++) {
        FUNC4("clear+up");
        FUNC6(seq,64,"\r\x1b[0K\x1b[1A");
        FUNC0(&ab,seq,FUNC7(seq));
    }

    /* Clean the top line. */
    FUNC4("clear");
    FUNC6(seq,64,"\r\x1b[0K");
    FUNC0(&ab,seq,FUNC7(seq));

    /* Write the prompt and the current buffer content */
    FUNC0(&ab,l->prompt,FUNC7(l->prompt));
    FUNC0(&ab,l->buf,l->len);

    /* Show hits if any. */
    FUNC5(&ab,l,plen);

    /* If we are at the very end of the screen with our prompt, we need to
     * emit a newline and move the prompt to the first column. */
    if (l->pos &&
        l->pos == l->len &&
        (l->pos+plen) % l->cols == 0)
    {
        FUNC4("<newline>");
        FUNC0(&ab,"\n",1);
        FUNC6(seq,64,"\r");
        FUNC0(&ab,seq,FUNC7(seq));
        rows++;
        if (rows > (int)l->maxrows) l->maxrows = rows;
    }

    /* Move cursor to right position. */
    rpos2 = (plen+l->pos+l->cols)/l->cols; /* current cursor relative row. */
    FUNC4("rpos2 %d", rpos2);

    /* Go up till we reach the expected positon. */
    if (rows-rpos2 > 0) {
        FUNC4("go-up %d", rows-rpos2);
        FUNC6(seq,64,"\x1b[%dA", rows-rpos2);
        FUNC0(&ab,seq,FUNC7(seq));
    }

    /* Set column. */
    col = (plen+(int)l->pos) % (int)l->cols;
    FUNC4("set col %d", 1+col);
    if (col)
        FUNC6(seq,64,"\r\x1b[%dC", col);
    else
        FUNC6(seq,64,"\r");
    FUNC0(&ab,seq,FUNC7(seq));

    FUNC4("\n");
    l->oldpos = l->pos;

    if (FUNC3(ab.b,ab.len,1,stdout) == -1) {} /* Can't recover from write error. */
    FUNC1(&ab);
}