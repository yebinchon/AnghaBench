
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_5__ {scalar_t__ curr_fat; scalar_t__ curr_dir; } ;
typedef TYPE_1__ card_block ;


 int CARD_ERROR_BROKEN ;
 int CARD_ERROR_READY ;
 scalar_t__ __card_checkdir (TYPE_1__*,int *) ;
 scalar_t__ __card_checkfat (TYPE_1__*,int *) ;

__attribute__((used)) static s32 __card_verify(card_block *card)
{
 u32 ret = 0;

 ret += __card_checkdir(card,((void*)0));
 ret += __card_checkfat(card,((void*)0));
 if(ret<=2) {
  if(card->curr_dir && card->curr_fat) return CARD_ERROR_READY;
 }
 return CARD_ERROR_BROKEN;
}
