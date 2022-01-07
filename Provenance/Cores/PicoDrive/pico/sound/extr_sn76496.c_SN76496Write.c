
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN76496 {int LastRegister; int* Register; int* Period; int UpdateStep; int RNG; int* Output; void* NoiseFB; int * VolTable; int * Volume; } ;


 void* FB_PNOISE ;
 void* FB_WNOISE ;
 void* NG_PRESET ;
 struct SN76496 ono_sn ;

void SN76496Write(int data)
{
 struct SN76496 *R = &ono_sn;
 int n;





 if (data & 0x80)
 {
  int r = (data & 0x70) >> 4;
  int c = r/2;

  R->LastRegister = r;
  R->Register[r] = (R->Register[r] & 0x3f0) | (data & 0x0f);
  switch (r)
  {
   case 0:
   case 2:
   case 4:
    R->Period[c] = R->UpdateStep * R->Register[r];
    if (R->Period[c] == 0) R->Period[c] = R->UpdateStep;
    if (r == 4)
    {

     if ((R->Register[6] & 0x03) == 0x03)
      R->Period[3] = 2 * R->Period[2];
    }
    break;
   case 1:
   case 3:
   case 5:
   case 7:
    R->Volume[c] = R->VolTable[data & 0x0f];
    break;
   case 6:
    {
     int n = R->Register[6];
     R->NoiseFB = (n & 4) ? FB_WNOISE : FB_PNOISE;
     n &= 3;

     R->Period[3] = ((n&3) == 3) ? 2 * R->Period[2] : (R->UpdateStep << (5+(n&3)));


     R->RNG = NG_PRESET;
     R->Output[3] = R->RNG & 1;
    }
    break;
  }
 }
 else
 {
  int r = R->LastRegister;
  int c = r/2;

  switch (r)
  {
   case 0:
   case 2:
   case 4:
    R->Register[r] = (R->Register[r] & 0x0f) | ((data & 0x3f) << 4);
    R->Period[c] = R->UpdateStep * R->Register[r];
    if (R->Period[c] == 0) R->Period[c] = R->UpdateStep;
    if (r == 4)
    {

     if ((R->Register[6] & 0x03) == 0x03)
      R->Period[3] = 2 * R->Period[2];
    }
    break;
   case 1:
   case 3:
   case 5:
   case 7:
    R->Volume[c] = R->VolTable[data & 0x0f];
    R->Register[r] = (R->Register[r] & 0x3f0) | (data & 0x0f);
    break;
   case 6:
    {
     R->Register[r] = (R->Register[r] & 0x3f0) | (data & 0x0f);
     n = R->Register[6];
     R->NoiseFB = (n & 4) ? FB_WNOISE : FB_PNOISE;
     n &= 3;

     R->Period[3] = ((n&3) == 3) ? 2 * R->Period[2] : (R->UpdateStep << (5+(n&3)));


     R->RNG = NG_PRESET;
     R->Output[3] = R->RNG & 1;
    }
    break;
  }
 }
}
