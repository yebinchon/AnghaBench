
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 int EXI_Unlock (size_t) ;
 int FALSE ;
 int * _ioCardInserted ;
 int sdgecko_doUnmount (size_t) ;
 int sdgecko_ejectedCB (size_t) ;

__attribute__((used)) static s32 __card_exthandler(s32 chn,s32 dev)
{
 _ioCardInserted[chn] = FALSE;
 sdgecko_doUnmount(chn);
 sdgecko_ejectedCB(chn);
 EXI_Unlock(chn);
 return 1;
}
