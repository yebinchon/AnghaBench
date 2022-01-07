
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t STD_ERR ;
 size_t STD_OUT ;
 int _IOLBF ;
 int __gecko_safe ;
 int __gecko_status ;
 int curr_con ;
 int ** devoptab_list ;
 int dotab_stdout ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;
 int usb_isgeckoalive (int) ;

void CON_EnableGecko(int channel,int safe)
{
 if(channel && (channel>1 || !usb_isgeckoalive(channel))) channel = -1;

 __gecko_status = channel;
 __gecko_safe = safe;

 if(__gecko_status!=-1) {
  devoptab_list[STD_OUT] = &dotab_stdout;
  devoptab_list[STD_ERR] = &dotab_stdout;


  if(!curr_con) {
   setvbuf(stdout, ((void*)0), _IOLBF, 0);
   setvbuf(stderr, ((void*)0), _IOLBF, 0);
  }
 }
}
