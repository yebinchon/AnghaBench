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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int FUNC5 (char*,char*,size_t) ; 
 size_t const FUNC6 (char const*) ; 

int FUNC7(char **target, int argc, const char **argv, const size_t *argvlen) {
    char *cmd = NULL; /* final command */
    int pos; /* position in final command */
    size_t len;
    int totlen, j;

    /* Calculate number of bytes needed for the command */
    totlen = 1+FUNC2(argc)+2;
    for (j = 0; j < argc; j++) {
        len = argvlen ? argvlen[j] : FUNC6(argv[j]);
        totlen += FUNC1(len);
    }

    /* Build the command at protocol level */
    cmd = FUNC3(totlen+1);
    if (cmd == NULL)
        return -1;

    pos = FUNC5(cmd,"*%d\r\n",argc);
    for (j = 0; j < argc; j++) {
        len = argvlen ? argvlen[j] : FUNC6(argv[j]);
        pos += FUNC5(cmd+pos,"$%zu\r\n",len);
        FUNC4(cmd+pos,argv[j],len);
        pos += len;
        cmd[pos++] = '\r';
        cmd[pos++] = '\n';
    }
    FUNC0(pos == totlen);
    cmd[pos] = '\0';

    *target = cmd;
    return totlen;
}