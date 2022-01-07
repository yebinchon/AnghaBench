
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef void* s32 ;
struct TYPE_3__ {scalar_t__ result; scalar_t__ attached; } ;
typedef TYPE_1__ card_block ;


 scalar_t__ CARD_ERROR_BUSY ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

__attribute__((used)) static s32 __card_putcntrlblock(card_block *card,s32 result)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(card->attached) card->result = result;
 else if(card->result==CARD_ERROR_BUSY) card->result = result;
 _CPU_ISR_Restore(level);
 return result;
}
