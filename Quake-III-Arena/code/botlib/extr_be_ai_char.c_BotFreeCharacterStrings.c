
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* c; } ;
typedef TYPE_3__ bot_character_t ;
struct TYPE_5__ {int string; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ value; } ;


 scalar_t__ CT_STRING ;
 int FreeMemory (int ) ;
 int MAX_CHARACTERISTICS ;

void BotFreeCharacterStrings(bot_character_t *ch)
{
 int i;

 for (i = 0; i < MAX_CHARACTERISTICS; i++)
 {
  if (ch->c[i].type == CT_STRING)
  {
   FreeMemory(ch->c[i].value.string);
  }
 }
}
