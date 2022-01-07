
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sadb_address {scalar_t__ sadb_address_proto; scalar_t__ sadb_address_prefixlen; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_3__ {int out_invaddr; } ;




 int EAFNOSUPPORT ;
 int EINVAL ;
 int LOG_DEBUG ;
 TYPE_2__* PFKEY_ADDR_SADDR (struct sadb_address*) ;
 int PFKEY_STAT_INCREMENT (int ) ;
 int ipseclog (int ) ;
 TYPE_1__ pfkeystat ;

__attribute__((used)) static int
key_validate_address_pair(struct sadb_address *src0,
        struct sadb_address *dst0)
{
 u_int plen = 0;


 if (src0->sadb_address_proto != dst0->sadb_address_proto) {
  ipseclog((LOG_DEBUG, "key_parse: upper layer protocol mismatched.\n"));
  PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
  return (EINVAL);
 }


 if (PFKEY_ADDR_SADDR(src0)->sa_family !=
  PFKEY_ADDR_SADDR(dst0)->sa_family) {
  ipseclog((LOG_DEBUG, "key_parse: address family mismatched.\n"));
  PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
  return (EINVAL);
 }
 if (PFKEY_ADDR_SADDR(src0)->sa_len !=
  PFKEY_ADDR_SADDR(dst0)->sa_len) {
  ipseclog((LOG_DEBUG,
      "key_parse: address struct size mismatched.\n"));
  PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
  return (EINVAL);
 }

 switch (PFKEY_ADDR_SADDR(src0)->sa_family) {
  case 129:
   if (PFKEY_ADDR_SADDR(src0)->sa_len != sizeof(struct sockaddr_in)) {
    PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
    return (EINVAL);
   }
   break;
  case 128:
   if (PFKEY_ADDR_SADDR(src0)->sa_len != sizeof(struct sockaddr_in6)) {
    PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
    return (EINVAL);
   }
   break;
  default:
   ipseclog((LOG_DEBUG,
       "key_parse: unsupported address family.\n"));
   PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
   return (EAFNOSUPPORT);
 }

 switch (PFKEY_ADDR_SADDR(src0)->sa_family) {
  case 129:
   plen = sizeof(struct in_addr) << 3;
   break;
  case 128:
   plen = sizeof(struct in6_addr) << 3;
   break;
  default:
   plen = 0;
   break;
 }


 if (src0->sadb_address_prefixlen > plen ||
  dst0->sadb_address_prefixlen > plen) {
  ipseclog((LOG_DEBUG,
      "key_parse: illegal prefixlen.\n"));
  PFKEY_STAT_INCREMENT(pfkeystat.out_invaddr);
  return (EINVAL);
 }





 return (0);
}
