
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* down ;
 int queens (int ) ;
 int* rows ;
 int* up ;

main()
{
 int i;

 for (i = 0; i < 15; i++)
  up[i] = down[i] = 1;
 for (i = 0; i < 8; i++)
  rows[i] = 1;
 queens(0);
 return 0;
}
