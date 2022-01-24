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
struct termios {int c_iflag; int c_lflag; int* c_cc; int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_oflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int /*<<< orphan*/  CS8 ; 
 int ECHO ; 
 int /*<<< orphan*/  ENOTTY ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int INPCK ; 
 int ISIG ; 
 int ISTRIP ; 
 int IXON ; 
 int /*<<< orphan*/  OPOST ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int atexit_registered ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linenoiseAtExit ; 
 struct termios orig_termios ; 
 int rawmode ; 
 int FUNC2 (int,struct termios*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static int FUNC4(int fd) {
    struct termios raw;

    if (!FUNC1(STDIN_FILENO)) goto fatal;
    if (!atexit_registered) {
        FUNC0(linenoiseAtExit);
        atexit_registered = 1;
    }
    if (FUNC2(fd,&orig_termios) == -1) goto fatal;

    raw = orig_termios;  /* modify the original mode */
    /* input modes: no break, no CR to NL, no parity check, no strip char,
     * no start/stop output control. */
    raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
    /* output modes - disable post processing */
    raw.c_oflag &= ~(OPOST);
    /* control modes - set 8 bit chars */
    raw.c_cflag |= (CS8);
    /* local modes - choing off, canonical off, no extended functions,
     * no signal chars (^Z,^C) */
    raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
    /* control chars - set return condition: min number of bytes and timer.
     * We want read to return every single byte, without timeout. */
    raw.c_cc[VMIN] = 1; raw.c_cc[VTIME] = 0; /* 1 byte, no timer */

    /* put terminal in raw mode after flushing */
    if (FUNC3(fd,TCSAFLUSH,&raw) < 0) goto fatal;
    rawmode = 1;
    return 0;

fatal:
    errno = ENOTTY;
    return -1;
}