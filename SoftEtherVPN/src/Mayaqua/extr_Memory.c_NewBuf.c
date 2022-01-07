
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SizeReserved; scalar_t__ Current; scalar_t__ Size; void* Buf; } ;
typedef TYPE_1__ BUF ;


 int INIT_BUF_SIZE ;
 int KS_CURRENT_BUF_COUNT ;
 int KS_INC (int ) ;
 int KS_NEWBUF_COUNT ;
 void* Malloc (int) ;

BUF *NewBuf()
{
 BUF *b;


 b = Malloc(sizeof(BUF));
 b->Buf = Malloc(INIT_BUF_SIZE);
 b->Size = 0;
 b->Current = 0;
 b->SizeReserved = INIT_BUF_SIZE;


 KS_INC(KS_NEWBUF_COUNT);
 KS_INC(KS_CURRENT_BUF_COUNT);

 return b;
}
