
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int DataSize; int IsSupported; scalar_t__ Data; } ;
typedef TYPE_1__ PPP_OPTION ;
typedef int PPP_LCP ;
typedef int IP ;


 TYPE_1__* GetOptionValue (int *,int ) ;
 int UINTToIP (int *,int ) ;

bool PPPGetIPAddressValueFromLCP(PPP_LCP *c, UINT type, IP *ip)
{
 PPP_OPTION *opt;
 UINT ui;

 if (c == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 opt = GetOptionValue(c, type);
 if (opt == ((void*)0))
 {
  return 0;
 }

 if (opt->DataSize != 4)
 {
  return 0;
 }

 opt->IsSupported = 1;

 ui = *((UINT *)opt->Data);

 UINTToIP(ip, ui);

 return 1;
}
