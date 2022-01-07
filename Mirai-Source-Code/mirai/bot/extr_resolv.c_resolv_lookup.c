
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; int member_0; } ;
struct sockaddr {int dummy; } ;
struct resolv_entries {int* addrs; int addrs_len; } ;
struct dnshdr {scalar_t__ id; scalar_t__ ancount; scalar_t__ qdcount; scalar_t__ opts; } ;
struct dnsans {int dummy; } ;
struct dns_resource {scalar_t__ type; scalar_t__ _class; scalar_t__ data_len; } ;
struct dns_question {scalar_t__ qclass; scalar_t__ qtype; } ;
typedef int response ;
typedef int ipv4_t ;
typedef int fd_set ;


 int AF_INET ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int INET_ADDR (int,int,int,int) ;
 int MSG_NOSIGNAL ;
 int O_NONBLOCK ;
 int PROTO_DNS_QCLASS_IP ;
 int PROTO_DNS_QTYPE_A ;
 int SOCK_DGRAM ;
 struct resolv_entries* calloc (int,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int ,int,int) ;
 scalar_t__ htons (int) ;
 int ntohs (scalar_t__) ;
 int printf (char*,...) ;
 int rand_next () ;
 int* realloc (int*,int) ;
 int recvfrom (int,char*,int,int ,int *,int *) ;
 int resolv_domain_to_hostname (char*,char*) ;
 int resolv_entries_free (struct resolv_entries*) ;
 int resolv_skip_name (char*,char*,int*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send (int,char*,int,int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int util_strlen (char*) ;
 int util_zero (struct sockaddr_in*,int) ;

struct resolv_entries *resolv_lookup(char *domain)
{
    struct resolv_entries *entries = calloc(1, sizeof (struct resolv_entries));
    char query[2048], response[2048];
    struct dnshdr *dnsh = (struct dnshdr *)query;
    char *qname = (char *)(dnsh + 1);

    resolv_domain_to_hostname(qname, domain);

    struct dns_question *dnst = (struct dns_question *)(qname + util_strlen(qname) + 1);
    struct sockaddr_in addr = {0};
    int query_len = sizeof (struct dnshdr) + util_strlen(qname) + 1 + sizeof (struct dns_question);
    int tries = 0, fd = -1, i = 0;
    uint16_t dns_id = rand_next() % 0xffff;

    util_zero(&addr, sizeof (struct sockaddr_in));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INET_ADDR(8,8,8,8);
    addr.sin_port = htons(53);


    dnsh->id = dns_id;
    dnsh->opts = htons(1 << 8);
    dnsh->qdcount = htons(1);
    dnst->qtype = htons(PROTO_DNS_QTYPE_A);
    dnst->qclass = htons(PROTO_DNS_QCLASS_IP);

    while (tries++ < 5)
    {
        fd_set fdset;
        struct timeval timeo;
        int nfds;

        if (fd != -1)
            close(fd);
        if ((fd = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
        {



            sleep(1);
            continue;
        }

        if (connect(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in)) == -1)
        {



            sleep(1);
            continue;
        }

        if (send(fd, query, query_len, MSG_NOSIGNAL) == -1)
        {



            sleep(1);
            continue;
        }

        fcntl(F_SETFL, fd, O_NONBLOCK | fcntl(F_GETFL, fd, 0));
        FD_ZERO(&fdset);
        FD_SET(fd, &fdset);

        timeo.tv_sec = 5;
        timeo.tv_usec = 0;
        nfds = select(fd + 1, &fdset, ((void*)0), ((void*)0), &timeo);

        if (nfds == -1)
        {



            break;
        }
        else if (nfds == 0)
        {



            continue;
        }
        else if (FD_ISSET(fd, &fdset))
        {



            int ret = recvfrom(fd, response, sizeof (response), MSG_NOSIGNAL, ((void*)0), ((void*)0));
            char *name;
            struct dnsans *dnsa;
            uint16_t ancount;
            int stop;

            if (ret < (sizeof (struct dnshdr) + util_strlen(qname) + 1 + sizeof (struct dns_question)))
                continue;

            dnsh = (struct dnshdr *)response;
            qname = (char *)(dnsh + 1);
            dnst = (struct dns_question *)(qname + util_strlen(qname) + 1);
            name = (char *)(dnst + 1);

            if (dnsh->id != dns_id)
                continue;
            if (dnsh->ancount == 0)
                continue;

            ancount = ntohs(dnsh->ancount);
            while (ancount-- > 0)
            {
                struct dns_resource *r_data = ((void*)0);

                resolv_skip_name(name, response, &stop);
                name = name + stop;

                r_data = (struct dns_resource *)name;
                name = name + sizeof(struct dns_resource);

                if (r_data->type == htons(PROTO_DNS_QTYPE_A) && r_data->_class == htons(PROTO_DNS_QCLASS_IP))
                {
                    if (ntohs(r_data->data_len) == 4)
                    {
                        uint32_t *p;
                        uint8_t tmp_buf[4];
                        for(i = 0; i < 4; i++)
                            tmp_buf[i] = name[i];

                        p = (uint32_t *)tmp_buf;

                        entries->addrs = realloc(entries->addrs, (entries->addrs_len + 1) * sizeof (ipv4_t));
                        entries->addrs[entries->addrs_len++] = (*p);



                    }

                    name = name + ntohs(r_data->data_len);
                } else {
                    resolv_skip_name(name, response, &stop);
                    name = name + stop;
                }
            }
        }

        break;
    }

    close(fd);





    if (entries->addrs_len > 0)
        return entries;
    else
    {
        resolv_entries_free(entries);
        return ((void*)0);
    }
}
