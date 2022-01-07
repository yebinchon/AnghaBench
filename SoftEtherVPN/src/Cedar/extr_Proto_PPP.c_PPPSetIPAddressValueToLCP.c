
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int OptionList; } ;
struct TYPE_9__ {int IsAccepted; int IsSupported; int AltDataSize; int AltData; } ;
typedef TYPE_1__ PPP_OPTION ;
typedef TYPE_2__ PPP_LCP ;
typedef int IP ;


 int Add (int ,TYPE_1__*) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int ,int *,int) ;
 TYPE_1__* GetOptionValue (TYPE_2__*,int ) ;
 int IPToUINT (int *) ;
 int IsZeroIP (int *) ;
 TYPE_1__* NewPPPOption (int ,int *,int) ;
 scalar_t__ PPPGetIPAddressValueFromLCP (TYPE_2__*,int ,int *) ;

bool PPPSetIPAddressValueToLCP(PPP_LCP *c, UINT type, IP *ip, bool only_modify)
{
 IP ip2;
 UINT ui;

 if (c == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 ui = IPToUINT(ip);

 if (PPPGetIPAddressValueFromLCP(c, type, &ip2))
 {
  PPP_OPTION *opt;
  opt = GetOptionValue(c, type);

  if (opt != ((void*)0))
  {
   if (IsZeroIP(ip) == 0)
   {
    if (CmpIpAddr(&ip2, ip) == 0)
    {

     opt->IsAccepted = 1;
     opt->IsSupported = 1;
    }
    else
    {

     opt->IsAccepted = 0;
     opt->IsSupported = 1;
     opt->AltDataSize = 4;
     Copy(opt->AltData, &ui, 4);
    }
   }
   else
   {


    opt->IsSupported = 0;
    opt->IsAccepted = 0;
   }
  }

  return 1;
 }
 else
 {
  if (IsZeroIP(ip) == 0)
  {

   if (only_modify != 0)
   {
    return 0;
   }
   else
   {
    PPP_OPTION *opt2 = NewPPPOption(type, &ui, 4);
    opt2->IsAccepted = opt2->IsSupported = 1;

    Add(c->OptionList, opt2);

    return 1;
   }
  }
  else
  {
   return 0;
  }
 }
}
