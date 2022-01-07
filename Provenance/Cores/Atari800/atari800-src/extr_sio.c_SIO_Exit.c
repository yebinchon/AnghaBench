
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_Dismount (int) ;
 int SIO_MAX_DRIVES ;

void SIO_Exit(void)
{
 int i;
 for (i = 1; i <= SIO_MAX_DRIVES; i++)
  SIO_Dismount(i);
}
