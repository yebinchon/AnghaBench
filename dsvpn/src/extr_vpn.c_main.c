
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_server; char* server_ip_or_name; char* server_port; char* wanted_if_name; char* local_tun_ip; char* remote_tun_ip; char* wanted_ext_gw_ip; int tun_fd; char* if_name; int firewall_rules_set; int server_ip; int * ext_if_name; int ext_gw_ip; } ;
typedef TYPE_1__ Context ;


 char* DEFAULT_CLIENT_IP ;
 int DEFAULT_MTU ;
 char* DEFAULT_PORT ;
 char* DEFAULT_SERVER_IP ;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ doit (TYPE_1__*) ;
 scalar_t__ firewall_rules (TYPE_1__*,int,int) ;
 int fprintf (int ,char*,...) ;
 int * get_default_ext_if_name () ;
 char* get_default_gw_ip () ;
 int get_tun6_addresses (TYPE_1__*) ;
 scalar_t__ load_key_file (TYPE_1__*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int perror (char*) ;
 int pledge (char*,int *) ;
 int printf (char*,char*) ;
 int puts (char*) ;
 scalar_t__ resolve_ip (int ,int,char*) ;
 int signal (int ,int ) ;
 int signal_handler ;
 int snprintf (int ,int,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int tun_create (char*,char*) ;
 scalar_t__ tun_set_mtu (char*,int ) ;
 int usage () ;

int main(int argc, char *argv[])
{
    Context context;
    const char *ext_gw_ip;

    if (argc < 3) {
        usage();
    }
    memset(&context, 0, sizeof context);
    context.is_server = strcmp(argv[1], "server") == 0;
    if (load_key_file(&context, argv[2]) != 0) {
        fprintf(stderr, "Unable to load the key file [%s]\n", argv[2]);
        return 1;
    }
    context.server_ip_or_name = (argc <= 3 || strcmp(argv[3], "auto") == 0) ? ((void*)0) : argv[3];
    if (context.server_ip_or_name == ((void*)0) && !context.is_server) {
        usage();
    }
    context.server_port = (argc <= 4 || strcmp(argv[4], "auto") == 0) ? DEFAULT_PORT : argv[4];
    context.wanted_if_name = (argc <= 5 || strcmp(argv[5], "auto") == 0) ? ((void*)0) : argv[5];
    context.local_tun_ip = (argc <= 6 || strcmp(argv[6], "auto") == 0)
                               ? (context.is_server ? DEFAULT_SERVER_IP : DEFAULT_CLIENT_IP)
                               : argv[6];
    context.remote_tun_ip = (argc <= 7 || strcmp(argv[7], "auto") == 0)
                                ? (context.is_server ? DEFAULT_CLIENT_IP : DEFAULT_SERVER_IP)
                                : argv[7];
    context.wanted_ext_gw_ip = (argc <= 8 || strcmp(argv[8], "auto") == 0) ? ((void*)0) : argv[8];
    ext_gw_ip = context.wanted_ext_gw_ip ? context.wanted_ext_gw_ip : get_default_gw_ip();
    snprintf(context.ext_gw_ip, sizeof context.ext_gw_ip, "%s", ext_gw_ip == ((void*)0) ? "" : ext_gw_ip);
    if (ext_gw_ip == ((void*)0) && !context.is_server) {
        fprintf(stderr, "Unable to automatically determine the gateway IP\n");
        return 1;
    }
    if ((context.ext_if_name = get_default_ext_if_name()) == ((void*)0) && context.is_server) {
        fprintf(stderr, "Unable to automatically determine the external interface\n");
        return 1;
    }
    get_tun6_addresses(&context);
    context.tun_fd = tun_create(context.if_name, context.wanted_if_name);
    if (context.tun_fd == -1) {
        perror("tun device creation");
        return 1;
    }
    printf("Interface: [%s]\n", context.if_name);
    if (tun_set_mtu(context.if_name, DEFAULT_MTU) != 0) {
        perror("mtu");
    }



    context.firewall_rules_set = -1;
    if (context.server_ip_or_name != ((void*)0) &&
        resolve_ip(context.server_ip, sizeof context.server_ip, context.server_ip_or_name) != 0) {
        firewall_rules(&context, 0, 1);
        return 1;
    }
    if (context.is_server) {
        if (firewall_rules(&context, 1, 0) != 0) {
            return -1;
        }




    } else {
        firewall_rules(&context, 0, 1);
    }
    signal(SIGINT, signal_handler);
    signal(SIGTERM, signal_handler);
    if (doit(&context) != 0) {
        return -1;
    }
    firewall_rules(&context, 0, 0);
    puts("Done.");

    return 0;
}
