#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** set; char** unset; } ;
struct TYPE_4__ {int firewall_rules_set; int /*<<< orphan*/  is_server; int /*<<< orphan*/ * if_name; int /*<<< orphan*/ * ext_gw_ip; int /*<<< orphan*/ * ext_if_name; int /*<<< orphan*/ * server_port; int /*<<< orphan*/ * server_ip; int /*<<< orphan*/ * remote_tun_ip; int /*<<< orphan*/ * local_tun_ip; int /*<<< orphan*/ * remote_tun_ip6; int /*<<< orphan*/ * local_tun_ip6; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char const***,char const* const,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Context *context, int set, int silent)
{
    const char *       substs[][2] = { { "$LOCAL_TUN_IP6", context->local_tun_ip6 },
                                { "$REMOTE_TUN_IP6", context->remote_tun_ip6 },
                                { "$LOCAL_TUN_IP", context->local_tun_ip },
                                { "$REMOTE_TUN_IP", context->remote_tun_ip },
                                { "$EXT_IP", context->server_ip },
                                { "$EXT_PORT", context->server_port },
                                { "$EXT_IF_NAME", context->ext_if_name },
                                { "$EXT_GW_IP", context->ext_gw_ip },
                                { "$IF_NAME", context->if_name },
                                { NULL, NULL } };
    const char *const *cmds;
    size_t             i;

    if (context->firewall_rules_set == set) {
        return 0;
    }
    if ((cmds = (set ? FUNC0(context->is_server).set
                     : FUNC0(context->is_server).unset)) == NULL) {
        FUNC1(stderr,
                "Routing commands for that operating system have not been "
                "added yet.\n");
        return 0;
    }
    for (i = 0; cmds[i] != NULL; i++) {
        if (FUNC2(substs, cmds[i], silent) != 0) {
            FUNC1(stderr, "Unable to run [%s]: [%s]\n", cmds[i], FUNC3(errno));
            return -1;
        }
    }
    context->firewall_rules_set = set;
    return 0;
}