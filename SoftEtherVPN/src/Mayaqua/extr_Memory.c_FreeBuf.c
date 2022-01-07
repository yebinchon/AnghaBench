
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Buf; } ;
typedef TYPE_1__ BUF ;


 int Free (TYPE_1__*) ;
 int KS_CURRENT_BUF_COUNT ;
 int KS_DEC (int ) ;
 int KS_FREEBUF_COUNT ;
 int KS_INC (int ) ;

void FreeBuf(BUF *b)
{

 if (b == ((void*)0))
 {
  return;
 }


 Free(b->Buf);
 Free(b);


 KS_INC(KS_FREEBUF_COUNT);
 KS_DEC(KS_CURRENT_BUF_COUNT);
}
