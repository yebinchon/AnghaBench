
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int character; } ;
typedef TYPE_1__ bot_state_t ;


 int CHARACTERISTIC_CHAT_CPM ;
 int trap_Characteristic_BInteger (int ,int ,int,int) ;

float BotChatTime(bot_state_t *bs) {
 int cpm;

 cpm = trap_Characteristic_BInteger(bs->character, CHARACTERISTIC_CHAT_CPM, 1, 4000);

 return 2.0;
}
