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
 int GDBSTUB_CMD_BUFLEN ; 
 int GDBSTUB_ST_ERR ; 
 int GDBSTUB_ST_OK ; 
 unsigned char FUNC0 () ; 
 unsigned char FUNC1 (unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned char* s_cmd ; 

int FUNC3(unsigned char **out_cmd, size_t *out_size)
{
    unsigned char c;
    unsigned char chsum = 0;
    unsigned char sentchs[2];
    int p = 0;
    c = FUNC0();
    if (c != '$') {
        return c;
    }
    while (1) {
        c = FUNC0();
        if (c == '#') {
            // end of packet, checksum follows
            s_cmd[p] = 0;
            break;
        }
        chsum += c;
        if (c == '$') {
            // restart packet?
            chsum = 0;
            p = 0;
            continue;
        }
        if (c == '}') {
            //escape the next char
            c = FUNC0();
            chsum += c;
            c ^= 0x20;
        }
        s_cmd[p++] = c;
        if (p >= GDBSTUB_CMD_BUFLEN) {
            return GDBSTUB_ST_ERR;
        }
    }
    // A # has been received. Get and check the received chsum.
    sentchs[0] = FUNC0();
    sentchs[1] = FUNC0();
    const unsigned char* c_ptr = &sentchs[0];
    unsigned char rchsum = FUNC1(&c_ptr, 8);
    if (rchsum != chsum) {
        FUNC2('-');
        return GDBSTUB_ST_ERR;
    } else {
        FUNC2('+');
        *out_cmd = s_cmd;
        *out_size = p;
        return GDBSTUB_ST_OK;
    }
}