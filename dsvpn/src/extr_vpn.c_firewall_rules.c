
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char** set; char** unset; } ;
struct TYPE_4__ {int firewall_rules_set; int is_server; int * if_name; int * ext_gw_ip; int * ext_if_name; int * server_port; int * server_ip; int * remote_tun_ip; int * local_tun_ip; int * remote_tun_ip6; int * local_tun_ip6; } ;
typedef TYPE_1__ Context ;


 int errno ;
 TYPE_2__ firewall_rules_cmds (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ shell_cmd (char const***,char const* const,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int firewall_rules(Context *context, int set, int silent)
{
    const char * substs[][2] = { { "$LOCAL_TUN_IP6", context->local_tun_ip6 },
                                { "$REMOTE_TUN_IP6", context->remote_tun_ip6 },
                                { "$LOCAL_TUN_IP", context->local_tun_ip },
                                { "$REMOTE_TUN_IP", context->remote_tun_ip },
                                { "$EXT_IP", context->server_ip },
                                { "$EXT_PORT", context->server_port },
                                { "$EXT_IF_NAME", context->ext_if_name },
                                { "$EXT_GW_IP", context->ext_gw_ip },
                                { "$IF_NAME", context->if_name },
                                { ((void*)0), ((void*)0) } };
    const char *const *cmds;
    size_t i;

    if (context->firewall_rules_set == set) {
        return 0;
    }
    if ((cmds = (set ? firewall_rules_cmds(context->is_server).set
                     : firewall_rules_cmds(context->is_server).unset)) == ((void*)0)) {
        fprintf(stderr,
                "Routing commands for that operating system have not been "
                "added yet.\n");
        return 0;
    }
    for (i = 0; cmds[i] != ((void*)0); i++) {
        if (shell_cmd(substs, cmds[i], silent) != 0) {
            fprintf(stderr, "Unable to run [%s]: [%s]\n", cmds[i], strerror(errno));
            return -1;
        }
    }
    context->firewall_rules_set = set;
    return 0;
}
