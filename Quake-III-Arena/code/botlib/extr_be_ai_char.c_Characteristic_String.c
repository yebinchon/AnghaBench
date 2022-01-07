
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* c; } ;
typedef TYPE_3__ bot_character_t ;
struct TYPE_9__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_6__ {int string; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;


 TYPE_3__* BotCharacterFromHandle (int) ;
 scalar_t__ CT_STRING ;
 int CheckCharacteristicIndex (int,int) ;
 int PRT_ERROR ;
 TYPE_4__ botimport ;
 int strncpy (char*,int ,int) ;
 int stub1 (int ,char*,int) ;

void Characteristic_String(int character, int index, char *buf, int size)
{
 bot_character_t *ch;

 ch = BotCharacterFromHandle(character);
 if (!ch) return;

 if (!CheckCharacteristicIndex(character, index)) return;

 if (ch->c[index].type == CT_STRING)
 {
  strncpy(buf, ch->c[index].value.string, size-1);
  buf[size-1] = '\0';
  return;
 }
 else
 {
  botimport.Print(PRT_ERROR, "characteristic %d is not a string\n", index);
  return;
 }
 return;
}
