
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip {int ip_vhl; } ;


 scalar_t__ IPOPT_COPIED (int) ;
 int IPOPT_EOL ;
 int IPOPT_NOP ;
 int IPOPT_OLEN ;
 int IP_VHL_HL (int ) ;
 int bcopy (int*,int*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
ip_optcopy(struct ip *ip, struct ip *jp)
{
 u_char *cp, *dp;
 int opt, optlen, cnt;

 cp = (u_char *)(ip + 1);
 dp = (u_char *)(jp + 1);
 cnt = (IP_VHL_HL(ip->ip_vhl) << 2) - sizeof (struct ip);
 for (; cnt > 0; cnt -= optlen, cp += optlen) {
  opt = cp[0];
  if (opt == IPOPT_EOL)
   break;
  if (opt == IPOPT_NOP) {

   *dp++ = IPOPT_NOP;
   optlen = 1;
   continue;
  }






  optlen = cp[IPOPT_OLEN];







  if (optlen > cnt)
   optlen = cnt;
  if (IPOPT_COPIED(opt)) {
   bcopy(cp, dp, optlen);
   dp += optlen;
  }
 }
 for (optlen = dp - (u_char *)(jp+1); optlen & 0x3; optlen++)
  *dp++ = IPOPT_EOL;
 return (optlen);
}
