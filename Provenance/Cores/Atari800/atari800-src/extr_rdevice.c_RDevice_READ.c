
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int bufend ;
 int* bufout ;
 scalar_t__ linefeeds ;
 scalar_t__ translation ;

void RDevice_READ(void)
{
  int j;






    if(translation)
    {
      if(bufout[0] == 0x0d)
      {
        CPU_regA = 0x9b;
      }
    }
    else
    {
      CPU_regA = bufout[0];
    }

    bufend--;

    for(j = 0; j <= bufend; j++)
    {
      bufout[j] = bufout[j+1];
    }


    if(translation && linefeeds && (bufout[0] == 0x0a))
    {
      for(j = 0; j <= bufend; j++)
      {
        bufout[j] = bufout[j+1];
      }
    }



  CPU_regY = 1;
  CPU_ClrN;
}
