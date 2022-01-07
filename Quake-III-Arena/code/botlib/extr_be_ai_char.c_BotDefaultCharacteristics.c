
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* c; } ;
typedef TYPE_3__ bot_character_t ;
struct TYPE_6__ {char* string; int integer; int _float; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;


 scalar_t__ CT_FLOAT ;
 scalar_t__ CT_INTEGER ;
 scalar_t__ CT_STRING ;
 scalar_t__ GetMemory (scalar_t__) ;
 int MAX_CHARACTERISTICS ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void BotDefaultCharacteristics(bot_character_t *ch, bot_character_t *defaultch)
{
 int i;

 for (i = 0; i < MAX_CHARACTERISTICS; i++)
 {
  if (ch->c[i].type) continue;

  if (defaultch->c[i].type == CT_FLOAT)
  {
   ch->c[i].type = CT_FLOAT;
   ch->c[i].value._float = defaultch->c[i].value._float;
  }
  else if (defaultch->c[i].type == CT_INTEGER)
  {
   ch->c[i].type = CT_INTEGER;
   ch->c[i].value.integer = defaultch->c[i].value.integer;
  }
  else if (defaultch->c[i].type == CT_STRING)
  {
   ch->c[i].type = CT_STRING;
   ch->c[i].value.string = (char *) GetMemory(strlen(defaultch->c[i].value.string)+1);
   strcpy(ch->c[i].value.string, defaultch->c[i].value.string);
  }
 }
}
