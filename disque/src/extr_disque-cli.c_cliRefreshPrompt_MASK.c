#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* hostsocket; int dbnum; scalar_t__ last_cmd_type; scalar_t__ prompt; int /*<<< orphan*/  hostip; int /*<<< orphan*/  hostport; } ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_ERROR ; 
 TYPE_1__ config ; 
 int FUNC0 (scalar_t__,int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC2(void) {
    int len;

    if (config.hostsocket != NULL)
        len = FUNC0(config.prompt,sizeof(config.prompt),"disque %s",
                       config.hostsocket);
    else
        len = FUNC0(config.prompt,sizeof(config.prompt),
                       FUNC1(config.hostip,':') ? "[%s]:%d" : "%s:%d",
                       config.hostip, config.hostport);
    /* Add [dbnum] if needed */
    if (config.dbnum != 0 && config.last_cmd_type != REDIS_REPLY_ERROR)
        len += FUNC0(config.prompt+len,sizeof(config.prompt)-len,"[%d]",
            config.dbnum);
    FUNC0(config.prompt+len,sizeof(config.prompt)-len,"> ");
}