
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_DRC ;

void pemu_validate_config(void)
{
 extern int PicoOpt;

 PicoOpt &= ~POPT_EN_DRC;
}
