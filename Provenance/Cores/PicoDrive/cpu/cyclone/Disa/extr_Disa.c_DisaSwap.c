
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaText ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int DisaSwap(int op)
{

  sprintf(DisaText,"swap d%d",op&7);
  return 0;
}
