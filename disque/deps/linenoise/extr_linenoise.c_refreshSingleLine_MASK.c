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
struct linenoiseState {char* prompt; int ofd; char* buf; size_t len; size_t pos; size_t cols; } ;
struct abuf {int /*<<< orphan*/  len; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct abuf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct linenoiseState *l) {
    char seq[64];
    size_t plen = FUNC4(l->prompt);
    int fd = l->ofd;
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
    FUNC3(seq,64,"\r");
    FUNC0(&ab,seq,FUNC4(seq));
    /* Write the prompt and the current buffer content */
    FUNC0(&ab,l->prompt,FUNC4(l->prompt));
    FUNC0(&ab,buf,len);
    /* Erase to right */
    FUNC3(seq,64,"\x1b[0K");
    FUNC0(&ab,seq,FUNC4(seq));
    /* Move cursor to original position. */
    FUNC3(seq,64,"\r\x1b[%dC", (int)(pos+plen));
    FUNC0(&ab,seq,FUNC4(seq));
    if (FUNC5(fd,ab.b,ab.len) == -1) {} /* Can't recover from write error. */
    FUNC1(&ab);
}