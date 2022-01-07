
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN76496 {scalar_t__* Volume; int* Count; int* Output; int RNG; int NoiseFB; scalar_t__* Period; } ;


 int MAX_OUTPUT ;
 int STEP ;
 struct SN76496 ono_sn ;

void SN76496Update(short *buffer, int length, int stereo)
{
 int i;
 struct SN76496 *R = &ono_sn;


 for (i = 0;i < 4;i++)
 {
  if (R->Volume[i] == 0)
  {



   if (R->Count[i] <= length*STEP) R->Count[i] += length*STEP;
  }
 }

 while (length > 0)
 {
  int vol[4];
  unsigned int out;
  int left;




  vol[0] = vol[1] = vol[2] = vol[3] = 0;

  for (i = 0;i < 3;i++)
  {
   if (R->Output[i]) vol[i] += R->Count[i];
   R->Count[i] -= STEP;
   while (R->Count[i] <= 0)
   {
    R->Count[i] += R->Period[i];
    if (R->Count[i] > 0)
    {
     R->Output[i] ^= 1;
     if (R->Output[i]) vol[i] += R->Period[i];
     break;
    }
    R->Count[i] += R->Period[i];
    vol[i] += R->Period[i];
   }
   if (R->Output[i]) vol[i] -= R->Count[i];
  }

  left = STEP;
  do
  {
   int nextevent;

   if (R->Count[3] < left) nextevent = R->Count[3];
   else nextevent = left;

   if (R->Output[3]) vol[3] += R->Count[3];
   R->Count[3] -= nextevent;
   if (R->Count[3] <= 0)
   {
    if (R->RNG & 1) R->RNG ^= R->NoiseFB;
    R->RNG >>= 1;
    R->Output[3] = R->RNG & 1;
    R->Count[3] += R->Period[3];
    if (R->Output[3]) vol[3] += R->Period[3];
   }
   if (R->Output[3]) vol[3] -= R->Count[3];

   left -= nextevent;
  } while (left > 0);

  out = vol[0] * R->Volume[0] + vol[1] * R->Volume[1] +
    vol[2] * R->Volume[2] + vol[3] * R->Volume[3];

  if (out > MAX_OUTPUT * STEP) out = MAX_OUTPUT * STEP;

  if ((out /= STEP))
   *buffer += out;
  if(stereo) buffer+=2;
  else buffer++;

  length--;
 }
}
