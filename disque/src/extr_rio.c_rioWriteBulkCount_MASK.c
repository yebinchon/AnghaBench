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
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

size_t FUNC2(rio *r, char prefix, int count) {
    char cbuf[128];
    int clen;

    cbuf[0] = prefix;
    clen = 1+FUNC0(cbuf+1,sizeof(cbuf)-1,count);
    cbuf[clen++] = '\r';
    cbuf[clen++] = '\n';
    if (FUNC1(r,cbuf,clen) == 0) return 0;
    return clen;
}