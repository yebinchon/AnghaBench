
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int SizeReserved; int Buf; } ;
typedef TYPE_1__ BUF ;


 int KS_ADJUST_BUFSIZE_COUNT ;
 int KS_INC (int ) ;
 int ReAlloc (int ,int) ;

void AdjustBufSize(BUF *b, UINT new_size)
{

 if (b == ((void*)0))
 {
  return;
 }

 if (b->SizeReserved >= new_size)
 {
  return;
 }

 while (b->SizeReserved < new_size)
 {
  b->SizeReserved = b->SizeReserved * 2;
 }
 b->Buf = ReAlloc(b->Buf, b->SizeReserved);


 KS_INC(KS_ADJUST_BUFSIZE_COUNT);
}
