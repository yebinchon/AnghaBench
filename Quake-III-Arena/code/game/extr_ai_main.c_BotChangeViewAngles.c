
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* ideal_viewangles; scalar_t__ enemy; int* viewangles; float* viewanglespeed; int client; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_5__ {scalar_t__ integer; } ;


 float AngleDifference (int,int) ;
 void* AngleMod (int) ;
 int BotChangeViewAngle (int,int,float) ;
 int CHARACTERISTIC_VIEW_FACTOR ;
 int CHARACTERISTIC_VIEW_MAXCHANGE ;
 size_t PITCH ;
 float abs (float) ;
 TYPE_2__ bot_challenge ;
 float trap_Characteristic_BFloat (int ,int ,int,int) ;
 int trap_EA_View (int ,int*) ;

void BotChangeViewAngles(bot_state_t *bs, float thinktime) {
 float diff, factor, maxchange, anglespeed, disired_speed;
 int i;

 if (bs->ideal_viewangles[PITCH] > 180) bs->ideal_viewangles[PITCH] -= 360;

 if (bs->enemy >= 0) {
  factor = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_VIEW_FACTOR, 0.01f, 1);
  maxchange = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_VIEW_MAXCHANGE, 1, 1800);
 }
 else {
  factor = 0.05f;
  maxchange = 360;
 }
 if (maxchange < 240) maxchange = 240;
 maxchange *= thinktime;
 for (i = 0; i < 2; i++) {

  if (bot_challenge.integer) {

   diff = abs(AngleDifference(bs->viewangles[i], bs->ideal_viewangles[i]));
   anglespeed = diff * factor;
   if (anglespeed > maxchange) anglespeed = maxchange;
   bs->viewangles[i] = BotChangeViewAngle(bs->viewangles[i],
           bs->ideal_viewangles[i], anglespeed);
  }
  else {

   bs->viewangles[i] = AngleMod(bs->viewangles[i]);
   bs->ideal_viewangles[i] = AngleMod(bs->ideal_viewangles[i]);
   diff = AngleDifference(bs->viewangles[i], bs->ideal_viewangles[i]);
   disired_speed = diff * factor;
   bs->viewanglespeed[i] += (bs->viewanglespeed[i] - disired_speed);
   if (bs->viewanglespeed[i] > 180) bs->viewanglespeed[i] = maxchange;
   if (bs->viewanglespeed[i] < -180) bs->viewanglespeed[i] = -maxchange;
   anglespeed = bs->viewanglespeed[i];
   if (anglespeed > maxchange) anglespeed = maxchange;
   if (anglespeed < -maxchange) anglespeed = -maxchange;
   bs->viewangles[i] += anglespeed;
   bs->viewangles[i] = AngleMod(bs->viewangles[i]);

   bs->viewanglespeed[i] *= 0.45 * (1 - factor);
  }


 }

 if (bs->viewangles[PITCH] > 180) bs->viewangles[PITCH] -= 360;

 trap_EA_View(bs->client, bs->viewangles);
}
