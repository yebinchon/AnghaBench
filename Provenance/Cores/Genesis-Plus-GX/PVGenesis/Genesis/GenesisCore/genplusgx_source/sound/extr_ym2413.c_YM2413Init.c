
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YM2413 ;


 int OPLL_initalize () ;
 int init_tables () ;
 int memset (int *,int ,int) ;
 int ym2413 ;

void YM2413Init(void)
{
  init_tables();


  memset(&ym2413,0,sizeof(YM2413));


  OPLL_initalize();
}
