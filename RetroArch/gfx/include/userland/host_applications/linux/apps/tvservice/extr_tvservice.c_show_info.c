
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vc_tv_show_info (int) ;

__attribute__((used)) static int show_info( int on )
{
   return vc_tv_show_info(on);
}
