
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct pf_rule {int proto; int dst; int src; } ;
struct TYPE_4__ {int op; int * gid; } ;
struct TYPE_3__ {int op; int * uid; } ;
typedef int MD5_CTX ;


 int PF_MD5_UPD (struct pf_rule*,int ) ;
 int PF_MD5_UPD_HTONL (struct pf_rule*,int ,int ) ;
 int PF_MD5_UPD_HTONS (struct pf_rule*,int ,int ) ;
 int PF_MD5_UPD_STR (struct pf_rule*,int ) ;
 int action ;
 int af ;
 int allow_opts ;
 int code ;
 int direction ;
 int flags ;
 int flagset ;
 TYPE_2__ gid ;
 int ifname ;
 int ifnot ;
 int keep_state ;
 int label ;
 int match_tag ;
 int match_tag_not ;
 int match_tagname ;
 int natpass ;
 int os_fingerprint ;
 int pf_hash_rule_addr (int *,int *,int ) ;
 int prob ;
 int proto ;
 int quick ;
 int rt ;
 int rule_flag ;
 int tos ;
 int type ;
 TYPE_1__ uid ;

__attribute__((used)) static void
pf_hash_rule(MD5_CTX *ctx, struct pf_rule *rule)
{
 u_int16_t x;
 u_int32_t y;

 pf_hash_rule_addr(ctx, &rule->src, rule->proto);
 pf_hash_rule_addr(ctx, &rule->dst, rule->proto);
 PF_MD5_UPD_STR(rule, label);
 PF_MD5_UPD_STR(rule, ifname);
 PF_MD5_UPD_STR(rule, match_tagname);
 PF_MD5_UPD_HTONS(rule, match_tag, x);
 PF_MD5_UPD_HTONL(rule, os_fingerprint, y);
 PF_MD5_UPD_HTONL(rule, prob, y);
 PF_MD5_UPD_HTONL(rule, uid.uid[0], y);
 PF_MD5_UPD_HTONL(rule, uid.uid[1], y);
 PF_MD5_UPD(rule, uid.op);
 PF_MD5_UPD_HTONL(rule, gid.gid[0], y);
 PF_MD5_UPD_HTONL(rule, gid.gid[1], y);
 PF_MD5_UPD(rule, gid.op);
 PF_MD5_UPD_HTONL(rule, rule_flag, y);
 PF_MD5_UPD(rule, action);
 PF_MD5_UPD(rule, direction);
 PF_MD5_UPD(rule, af);
 PF_MD5_UPD(rule, quick);
 PF_MD5_UPD(rule, ifnot);
 PF_MD5_UPD(rule, match_tag_not);
 PF_MD5_UPD(rule, natpass);
 PF_MD5_UPD(rule, keep_state);
 PF_MD5_UPD(rule, proto);
 PF_MD5_UPD(rule, type);
 PF_MD5_UPD(rule, code);
 PF_MD5_UPD(rule, flags);
 PF_MD5_UPD(rule, flagset);
 PF_MD5_UPD(rule, allow_opts);
 PF_MD5_UPD(rule, rt);
 PF_MD5_UPD(rule, tos);
}
