
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int chn; scalar_t__ filenum; } ;
typedef TYPE_1__ card_file ;
typedef int card_block ;


 int CARD_ERROR_NOCARD ;
 int CARD_ERROR_NOFILE ;
 int CARD_ERROR_READY ;
 scalar_t__ CARD_MAXFILES ;
 int EXI_CHANNEL_0 ;
 int EXI_CHANNEL_2 ;
 int __card_getcntrlblock (int,int **) ;
 int __card_putcntrlblock (int *,int ) ;

s32 CARD_Close(card_file *file)
{
 s32 ret;
 card_block *card = ((void*)0);

 if(file->chn<EXI_CHANNEL_0 || file->chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if(file->filenum<0 || file->filenum>=CARD_MAXFILES) return CARD_ERROR_NOFILE;
 if((ret=__card_getcntrlblock(file->chn,&card))<0) return ret;

 file->chn = -1;
 __card_putcntrlblock(card,CARD_ERROR_READY);
 return CARD_ERROR_READY;
}
