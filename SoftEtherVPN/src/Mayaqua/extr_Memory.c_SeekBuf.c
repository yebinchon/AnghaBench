
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Size; scalar_t__ Current; } ;
typedef TYPE_1__ BUF ;


 int KS_INC (int ) ;
 int KS_SEEK_BUF_COUNT ;
 scalar_t__ MAKESURE (scalar_t__,int ,int ) ;

void SeekBuf(BUF *b, UINT offset, int mode)
{
 UINT new_pos;

 if (b == ((void*)0))
 {
  return;
 }

 if (mode == 0)
 {

  new_pos = offset;
 }
 else
 {
  if (mode > 0)
  {

   new_pos = b->Current + offset;
  }
  else
  {

   if (b->Current >= offset)
   {
    new_pos = b->Current - offset;
   }
   else
   {
    new_pos = 0;
   }
  }
 }
 b->Current = MAKESURE(new_pos, 0, b->Size);

 KS_INC(KS_SEEK_BUF_COUNT);
}
