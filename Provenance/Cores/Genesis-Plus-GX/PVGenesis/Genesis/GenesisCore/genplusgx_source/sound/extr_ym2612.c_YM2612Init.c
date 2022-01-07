
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YM2612 ;


 int init_tables () ;
 int memset (int *,int ,int) ;
 int ym2612 ;

void YM2612Init(void)
{
  memset(&ym2612,0,sizeof(YM2612));
  init_tables();
}
