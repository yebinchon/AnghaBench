
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CLOCKS_PER_SEC ;
 int clock () ;

__attribute__((used)) static u64 cd_Timer(void)
{
   return (clock() / (CLOCKS_PER_SEC / 1000));
}
