#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int is_server; char* server_ip_or_name; char* server_port; char* wanted_if_name; char* local_tun_ip; char* remote_tun_ip; char* wanted_ext_gw_ip; int tun_fd; char* if_name; int firewall_rules_set; int /*<<< orphan*/  server_ip; int /*<<< orphan*/ * ext_if_name; int /*<<< orphan*/  ext_gw_ip; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 char* DEFAULT_CLIENT_IP ; 
 int /*<<< orphan*/  DEFAULT_MTU ; 
 char* DEFAULT_PORT ; 
 char* DEFAULT_SERVER_IP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(int argc, char *argv[])
{
    Context     context;
    const char *ext_gw_ip;

    if (argc < 3) {
        FUNC18();
    }
    FUNC7(&context, 0, sizeof context);
    context.is_server = FUNC15(argv[1], "server") == 0;
    if (FUNC6(&context, argv[2]) != 0) {
        FUNC2(stderr, "Unable to load the key file [%s]\n", argv[2]);
        return 1;
    }
    context.server_ip_or_name = (argc <= 3 || FUNC15(argv[3], "auto") == 0) ? NULL : argv[3];
    if (context.server_ip_or_name == NULL && !context.is_server) {
        FUNC18();
    }
    context.server_port    = (argc <= 4 || FUNC15(argv[4], "auto") == 0) ? DEFAULT_PORT : argv[4];
    context.wanted_if_name = (argc <= 5 || FUNC15(argv[5], "auto") == 0) ? NULL : argv[5];
    context.local_tun_ip   = (argc <= 6 || FUNC15(argv[6], "auto") == 0)
                               ? (context.is_server ? DEFAULT_SERVER_IP : DEFAULT_CLIENT_IP)
                               : argv[6];
    context.remote_tun_ip = (argc <= 7 || FUNC15(argv[7], "auto") == 0)
                                ? (context.is_server ? DEFAULT_CLIENT_IP : DEFAULT_SERVER_IP)
                                : argv[7];
    context.wanted_ext_gw_ip = (argc <= 8 || FUNC15(argv[8], "auto") == 0) ? NULL : argv[8];
    ext_gw_ip = context.wanted_ext_gw_ip ? context.wanted_ext_gw_ip : FUNC4();
    FUNC14(context.ext_gw_ip, sizeof context.ext_gw_ip, "%s", ext_gw_ip == NULL ? "" : ext_gw_ip);
    if (ext_gw_ip == NULL && !context.is_server) {
        FUNC2(stderr, "Unable to automatically determine the gateway IP\n");
        return 1;
    }
    if ((context.ext_if_name = FUNC3()) == NULL && context.is_server) {
        FUNC2(stderr, "Unable to automatically determine the external interface\n");
        return 1;
    }
    FUNC5(&context);
    context.tun_fd = FUNC16(context.if_name, context.wanted_if_name);
    if (context.tun_fd == -1) {
        FUNC8("tun device creation");
        return 1;
    }
    FUNC10("Interface: [%s]\n", context.if_name);
    if (FUNC17(context.if_name, DEFAULT_MTU) != 0) {
        FUNC8("mtu");
    }
#ifdef __OpenBSD__
    pledge("stdio proc exec dns inet", NULL);
#endif
    context.firewall_rules_set = -1;
    if (context.server_ip_or_name != NULL &&
        FUNC12(context.server_ip, sizeof context.server_ip, context.server_ip_or_name) != 0) {
        FUNC1(&context, 0, 1);
        return 1;
    }
    if (context.is_server) {
        if (FUNC1(&context, 1, 0) != 0) {
            return -1;
        }
#ifdef __OpenBSD__
        printf("\nAdd the following rule to /etc/pf.conf:\npass out from %s nat-to egress\n\n",
               context.remote_tun_ip);
#endif
    } else {
        FUNC1(&context, 0, 1);
    }
    FUNC13(SIGINT, signal_handler);
    FUNC13(SIGTERM, signal_handler);
    if (FUNC0(&context) != 0) {
        return -1;
    }
    FUNC1(&context, 0, 0);
    FUNC11("Done.");

    return 0;
}