
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct card_dat {int dummy; } ;
struct TYPE_3__ {struct card_dat* curr_dir; } ;
typedef TYPE_1__ card_block ;



__attribute__((used)) static __inline__ struct card_dat* __card_getdirblock(card_block *card)
{
 return card->curr_dir;
}
