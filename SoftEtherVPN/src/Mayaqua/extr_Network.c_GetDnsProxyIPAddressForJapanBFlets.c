
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {char* Value; } ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_1__ INI_ENTRY ;
typedef int BUF ;


 scalar_t__ BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F ;
 int Copy (int *,int *,int) ;
 int FreeBuf (int *) ;
 int FreeIni (int *) ;
 TYPE_1__* GetIniEntry (int *,char*) ;
 int IsEmptyStr (char*) ;
 int IsZeroIp (int *) ;
 int * QueryFileByUdpForJapanBFlets (scalar_t__,int*) ;
 int * ReadIni (int *) ;
 scalar_t__ StrToIP (int *,char*) ;

bool GetDnsProxyIPAddressForJapanBFlets(IP *ip_ret, UINT timeout, bool *cancel)
{
 BUF *b;
 LIST *o;
 bool ret = 0;

 if (ip_ret == ((void*)0))
 {
  return 0;
 }
 if (timeout == 0)
 {
  timeout = BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F;
 }

 b = QueryFileByUdpForJapanBFlets(timeout, cancel);

 if (b == ((void*)0))
 {
  return 0;
 }

 o = ReadIni(b);

 if (o != ((void*)0))
 {
  INI_ENTRY *e = GetIniEntry(o, "DDnsServerForBFlets");

  if (e != ((void*)0))
  {
   char *s = e->Value;

   if (IsEmptyStr(s) == 0)
   {
    IP ip;

    if (StrToIP(&ip, s))
    {
     if (IsZeroIp(&ip) == 0)
     {
      Copy(ip_ret, &ip, sizeof(IP));
      ret = 1;
     }
    }
   }
  }
 }

 FreeIni(o);
 FreeBuf(b);

 return ret;
}
