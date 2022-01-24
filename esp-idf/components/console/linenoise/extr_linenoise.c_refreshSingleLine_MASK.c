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
struct linenoiseState {size_t plen; char* buf; size_t len; size_t pos; size_t cols; char* prompt; } ;
struct abuf {int /*<<< orphan*/  len; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct abuf*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct abuf*,struct linenoiseState*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct linenoiseState *l) {
    char seq[64];
    size_t plen = l->plen;
    char *buf = l->buf;
    size_t len = l->len;
    size_t pos = l->pos;
    struct abuf ab;

    while((plen+pos) >= l->cols) {
        buf++;
        len--;
        pos--;
    }
    while (plen+len > l->cols) {
        len--;
    }

    FUNC2(&ab);
    /* Cursor to left edge */
    FUNC5(seq,64,"\r");
    FUNC0(&ab,seq,FUNC6(seq));
    /* Write the prompt and the current buffer content */
    FUNC0(&ab,l->prompt,FUNC6(l->prompt));
    FUNC0(&ab,buf,len);
    /* Show hits if any. */
    FUNC4(&ab,l,plen);
    /* Erase to right */
    FUNC5(seq,64,"\x1b[0K");
    FUNC0(&ab,seq,FUNC6(seq));
    /* Move cursor to original position. */
    FUNC5(seq,64,"\r\x1b[%dC", (int)(pos+plen));
    FUNC0(&ab,seq,FUNC6(seq));
    if (FUNC3(ab.b, ab.len, 1, stdout) == -1) {} /* Can't recover from write error. */
    FUNC1(&ab);
}