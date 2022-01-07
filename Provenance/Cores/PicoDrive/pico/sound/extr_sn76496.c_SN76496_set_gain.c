
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN76496 {int* VolTable; } ;


 int MAX_OUTPUT ;

__attribute__((used)) static void SN76496_set_gain(struct SN76496 *R,int gain)
{
 int i;
 double out;


 gain &= 0xff;


 out = MAX_OUTPUT / 3;
 while (gain-- > 0)
  out *= 1.023292992;


 for (i = 0;i < 15;i++)
 {

  if (out > MAX_OUTPUT / 3) R->VolTable[i] = MAX_OUTPUT / 3;
  else R->VolTable[i] = out;

  out /= 1.258925412;
 }
 R->VolTable[15] = 0;
}
