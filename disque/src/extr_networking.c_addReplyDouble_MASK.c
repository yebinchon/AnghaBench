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
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  dbuf ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (double) ; 
 int FUNC3 (char*,int,char*,int,...) ; 

void FUNC4(client *c, double d) {
    char dbuf[128], sbuf[128];
    int dlen, slen;
    if (FUNC2(d)) {
        /* Libc in odd systems (Hi Solaris!) will format infinite in a
         * different way, so better to handle it in an explicit way. */
        FUNC0(c, d > 0 ? "inf" : "-inf");
    } else {
        dlen = FUNC3(dbuf,sizeof(dbuf),"%.17g",d);
        slen = FUNC3(sbuf,sizeof(sbuf),"$%d\r\n%s\r\n",dlen,dbuf);
        FUNC1(c,sbuf,slen);
    }
}