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
struct linenoiseState {char* prompt; int len; int cols; int oldpos; int maxrows; int ofd; char* buf; int pos; } ;
struct abuf {int /*<<< orphan*/  len; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct linenoiseState *l) {
    char seq[64];
    int plen = FUNC5(l->prompt);
    int rows = (plen+l->len+l->cols-1)/l->cols; /* rows used by current buf. */
    int rpos = (plen+l->oldpos+l->cols)/l->cols; /* cursor relative row. */
    int rpos2; /* rpos after refresh. */
    int col; /* colum position, zero-based. */
    int old_rows = l->maxrows;
    int fd = l->ofd, j;
    struct abuf ab;

    /* Update maxrows if needed. */
    if (rows > (int)l->maxrows) l->maxrows = rows;

    /* First step: clear all the lines used before. To do so start by
     * going to the last row. */
    FUNC2(&ab);
    if (old_rows-rpos > 0) {
        FUNC3("go down %d", old_rows-rpos);
        FUNC4(seq,64,"\x1b[%dB", old_rows-rpos);
        FUNC0(&ab,seq,FUNC5(seq));
    }

    /* Now for every row clear it, go up. */
    for (j = 0; j < old_rows-1; j++) {
        FUNC3("clear+up");
        FUNC4(seq,64,"\r\x1b[0K\x1b[1A");
        FUNC0(&ab,seq,FUNC5(seq));
    }

    /* Clean the top line. */
    FUNC3("clear");
    FUNC4(seq,64,"\r\x1b[0K");
    FUNC0(&ab,seq,FUNC5(seq));

    /* Write the prompt and the current buffer content */
    FUNC0(&ab,l->prompt,FUNC5(l->prompt));
    FUNC0(&ab,l->buf,l->len);

    /* If we are at the very end of the screen with our prompt, we need to
     * emit a newline and move the prompt to the first column. */
    if (l->pos &&
        l->pos == l->len &&
        (l->pos+plen) % l->cols == 0)
    {
        FUNC3("<newline>");
        FUNC0(&ab,"\n",1);
        FUNC4(seq,64,"\r");
        FUNC0(&ab,seq,FUNC5(seq));
        rows++;
        if (rows > (int)l->maxrows) l->maxrows = rows;
    }

    /* Move cursor to right position. */
    rpos2 = (plen+l->pos+l->cols)/l->cols; /* current cursor relative row. */
    FUNC3("rpos2 %d", rpos2);

    /* Go up till we reach the expected positon. */
    if (rows-rpos2 > 0) {
        FUNC3("go-up %d", rows-rpos2);
        FUNC4(seq,64,"\x1b[%dA", rows-rpos2);
        FUNC0(&ab,seq,FUNC5(seq));
    }

    /* Set column. */
    col = (plen+(int)l->pos) % (int)l->cols;
    FUNC3("set col %d", 1+col);
    if (col)
        FUNC4(seq,64,"\r\x1b[%dC", col);
    else
        FUNC4(seq,64,"\r");
    FUNC0(&ab,seq,FUNC5(seq));

    FUNC3("\n");
    l->oldpos = l->pos;

    if (FUNC6(fd,ab.b,ab.len) == -1) {} /* Can't recover from write error. */
    FUNC1(&ab);
}