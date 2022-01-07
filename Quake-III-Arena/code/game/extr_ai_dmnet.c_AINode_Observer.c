
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 int AIEnter_Stand (int *,char*) ;
 int BotIsObserver (int *) ;
 int qtrue ;

int AINode_Observer(bot_state_t *bs) {

 if (!BotIsObserver(bs)) {
  AIEnter_Stand(bs, "observer: left observer");
 }
 return qtrue;
}
