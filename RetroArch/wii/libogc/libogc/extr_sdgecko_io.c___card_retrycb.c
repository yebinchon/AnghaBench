
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int * _ioRetryCB ;
 int _ioRetryCnt ;
 int sdgecko_initIO (int ) ;

__attribute__((used)) static s32 __card_retrycb(s32 drv_no)
{
 _ioRetryCB = ((void*)0);
 _ioRetryCnt++;
 return sdgecko_initIO(drv_no);
}
