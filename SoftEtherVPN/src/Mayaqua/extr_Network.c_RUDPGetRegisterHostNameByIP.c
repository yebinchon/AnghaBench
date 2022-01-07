
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int addr; } ;
typedef TYPE_1__ IP ;


 int BinToStr (char*,int,int *,int) ;
 int Debug (char*,TYPE_1__*,char*) ;
 int Format (char*,int ,int ,char,char) ;
 scalar_t__ IsIP4 (TYPE_1__*) ;
 scalar_t__ IsUseAlternativeHostname () ;
 int Rand (int *,int) ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int) ;
 int StrLower (char*) ;
 int UDP_NAT_T_SERVER_TAG ;
 int UDP_NAT_T_SERVER_TAG_ALT ;

void RUDPGetRegisterHostNameByIP(char *dst, UINT size, IP *ip)
{
 char tmp[16];

 if (dst == ((void*)0))
 {
  return;
 }

 if (ip != ((void*)0) && IsIP4(ip))
 {
  UCHAR hash[SHA1_SIZE];

  Sha1(hash, ip->addr, 4);
  BinToStr(tmp, sizeof(tmp), hash, 2);
 }
 else
 {
  UCHAR rand[2];
  Rand(rand, 2);
  BinToStr(tmp, sizeof(tmp), rand, 2);
 }

 StrLower(tmp);
 Format(dst, size,
  (IsUseAlternativeHostname() ? UDP_NAT_T_SERVER_TAG_ALT : UDP_NAT_T_SERVER_TAG),
  tmp[2], tmp[3]);


 if (0)
 {
  Debug("Hash Src IP: %r\n"
     "Hash Dst HN: %s\n",
     ip,
     dst);
 }
}
