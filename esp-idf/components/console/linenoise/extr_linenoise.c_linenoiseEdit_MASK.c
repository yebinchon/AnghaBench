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
struct linenoiseState {char* buf; size_t buflen; char const* prompt; int plen; scalar_t__ oldpos; scalar_t__ pos; int len; scalar_t__ history_index; scalar_t__ maxrows; int /*<<< orphan*/  cols; } ;
typedef  int /*<<< orphan*/  linenoiseHintsCallback ;

/* Variables and functions */
#define  BACKSPACE 143 
#define  CTRL_A 142 
#define  CTRL_B 141 
#define  CTRL_C 140 
#define  CTRL_D 139 
#define  CTRL_E 138 
#define  CTRL_F 137 
#define  CTRL_K 136 
#define  CTRL_L 135 
#define  CTRL_N 134 
#define  CTRL_P 133 
#define  CTRL_T 132 
#define  CTRL_U 131 
#define  CTRL_W 130 
 int /*<<< orphan*/  EAGAIN ; 
#define  ENTER 129 
#define  ESC 128 
 int /*<<< orphan*/  LINENOISE_HISTORY_NEXT ; 
 int /*<<< orphan*/  LINENOISE_HISTORY_PREV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct linenoiseState*) ; 
 int /*<<< orphan*/ * completionCallback ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/ * hintsCallback ; 
 int /*<<< orphan*/ * history ; 
 size_t history_len ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC10 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC11 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC12 (struct linenoiseState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct linenoiseState*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC15 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC16 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC17 (struct linenoiseState*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  mlmode ; 
 int /*<<< orphan*/  FUNC19 (struct linenoiseState*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC20 (char const*) ; 

__attribute__((used)) static int FUNC21(char *buf, size_t buflen, const char *prompt)
{
    struct linenoiseState l;

    /* Populate the linenoise state that we pass to functions implementing
     * specific editing functionalities. */
    l.buf = buf;
    l.buflen = buflen;
    l.prompt = prompt;
    l.plen = FUNC20(prompt);
    l.oldpos = l.pos = 0;
    l.len = 0;
    l.cols = FUNC6();
    l.maxrows = 0;
    l.history_index = 0;

    /* Buffer starts empty. */
    l.buf[0] = '\0';
    l.buflen--; /* Make sure there is always space for the nulterm */

    /* The latest history entry is always our current buffer, that
     * initially is just an empty string. */
    FUNC18("");

    int pos1 = FUNC7();
    if (FUNC5(prompt,l.plen,1,stdout) == -1) return -1;
    int pos2 = FUNC7();
    if (pos1 >= 0 && pos2 >= 0) {
        l.plen = pos2 - pos1;
    }
    while(1) {
        char c;
        int nread;
        char seq[3];

        nread = FUNC3(&c, 1, 1, stdin);
        if (nread <= 0) return l.len;

        /* Only autocomplete when the callback is set. It returns < 0 when
         * there was an error reading from fd. Otherwise it will return the
         * character that should be handled next. */
        if (c == 9 && completionCallback != NULL) {
            int c2 = FUNC1(&l);
            /* Return on errors */
            if (c2 < 0) return l.len;
            /* Read next character when 0 */
            if (c2 == 0) continue;
            c = c2;
        }

        switch(c) {
        case ENTER:    /* enter */
            history_len--;
            FUNC4(history[history_len]);
            if (mlmode) FUNC14(&l);
            if (hintsCallback) {
                /* Force a refresh without hints to leave the previous
                 * line as the user typed it after a newline. */
                linenoiseHintsCallback *hc = hintsCallback;
                hintsCallback = NULL;
                FUNC19(&l);
                hintsCallback = hc;
            }
            return (int)l.len;
        case CTRL_C:     /* ctrl-c */
            errno = EAGAIN;
            return -1;
        case BACKSPACE:   /* backspace */
        case 8:     /* ctrl-h */
            FUNC9(&l);
            break;
        case CTRL_D:     /* ctrl-d, remove char at right of cursor, or if the
                            line is empty, act as end-of-file. */
            if (l.len > 0) {
                FUNC10(&l);
            } else {
                history_len--;
                FUNC4(history[history_len]);
                return -1;
            }
            break;
        case CTRL_T:    /* ctrl-t, swaps current character with previous. */
            if (l.pos > 0 && l.pos < l.len) {
                int aux = buf[l.pos-1];
                buf[l.pos-1] = buf[l.pos];
                buf[l.pos] = aux;
                if (l.pos != l.len-1) l.pos++;
                FUNC19(&l);
            }
            break;
        case CTRL_B:     /* ctrl-b */
            FUNC16(&l);
            break;
        case CTRL_F:     /* ctrl-f */
            FUNC17(&l);
            break;
        case CTRL_P:    /* ctrl-p */
            FUNC12(&l, LINENOISE_HISTORY_PREV);
            break;
        case CTRL_N:    /* ctrl-n */
            FUNC12(&l, LINENOISE_HISTORY_NEXT);
            break;
        case ESC:    /* escape sequence */
            /* Read the next two bytes representing the escape sequence. */
            if (FUNC3(seq, 1, 2, stdin) < 2) break;

            /* ESC [ sequences. */
            if (seq[0] == '[') {
                if (seq[1] >= '0' && seq[1] <= '9') {
                    /* Extended escape, read additional byte. */
                    if (FUNC3(seq+2, 1, 1, stdin) == -1) break;
                    if (seq[2] == '~') {
                        switch(seq[1]) {
                        case '3': /* Delete key. */
                            FUNC10(&l);
                            break;
                        }
                    }
                } else {
                    switch(seq[1]) {
                    case 'A': /* Up */
                        FUNC12(&l, LINENOISE_HISTORY_PREV);
                        break;
                    case 'B': /* Down */
                        FUNC12(&l, LINENOISE_HISTORY_NEXT);
                        break;
                    case 'C': /* Right */
                        FUNC17(&l);
                        break;
                    case 'D': /* Left */
                        FUNC16(&l);
                        break;
                    case 'H': /* Home */
                        FUNC15(&l);
                        break;
                    case 'F': /* End*/
                        FUNC14(&l);
                        break;
                    }
                }
            }

            /* ESC O sequences. */
            else if (seq[0] == 'O') {
                switch(seq[1]) {
                case 'H': /* Home */
                    FUNC15(&l);
                    break;
                case 'F': /* End*/
                    FUNC14(&l);
                    break;
                }
            }
            break;
        default:
            if (FUNC13(&l,c)) return -1;
            break;
        case CTRL_U: /* Ctrl+u, delete the whole line. */
            buf[0] = '\0';
            l.pos = l.len = 0;
            FUNC19(&l);
            break;
        case CTRL_K: /* Ctrl+k, delete from current to end of line. */
            buf[l.pos] = '\0';
            l.len = l.pos;
            FUNC19(&l);
            break;
        case CTRL_A: /* Ctrl+a, go to the start of the line */
            FUNC15(&l);
            break;
        case CTRL_E: /* ctrl+e, go to the end of the line */
            FUNC14(&l);
            break;
        case CTRL_L: /* ctrl+l, clear screen */
            FUNC8();
            FUNC19(&l);
            break;
        case CTRL_W: /* ctrl+w, delete previous word */
            FUNC11(&l);
            break;
        }
        if (FUNC0(stdout) > 0) {
            FUNC2(stdout);
        }
    }
    return l.len;
}