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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct rewriteConfigState *state, char *option, long long value, long long defvalue) {
    char buf[64];
    int force = value != defvalue;
    sds line;

    FUNC0(buf,sizeof(buf),value);
    line = FUNC2(FUNC3(),"%s %s",option,buf);
    FUNC1(state,option,line,force);
}