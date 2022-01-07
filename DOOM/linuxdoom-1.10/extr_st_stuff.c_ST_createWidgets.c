
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t readyweapon; int * maxammo; int * ammo; int armorpoints; int * weaponowned; int health; } ;
struct TYPE_9__ {size_t data; } ;
struct TYPE_8__ {size_t ammo; } ;


 int ST_AMMO0WIDTH ;
 int ST_AMMO0X ;
 int ST_AMMO0Y ;
 int ST_AMMO1WIDTH ;
 int ST_AMMO1X ;
 int ST_AMMO1Y ;
 int ST_AMMO2WIDTH ;
 int ST_AMMO2X ;
 int ST_AMMO2Y ;
 int ST_AMMO3WIDTH ;
 int ST_AMMO3X ;
 int ST_AMMO3Y ;
 int ST_AMMOWIDTH ;
 int ST_AMMOX ;
 int ST_AMMOY ;
 int ST_ARMORX ;
 int ST_ARMORY ;
 int ST_ARMSBGX ;
 int ST_ARMSBGY ;
 scalar_t__ ST_ARMSX ;
 int ST_ARMSXSPACE ;
 scalar_t__ ST_ARMSY ;
 int ST_ARMSYSPACE ;
 scalar_t__ ST_FACESX ;
 scalar_t__ ST_FACESY ;
 int ST_FRAGSWIDTH ;
 int ST_FRAGSX ;
 int ST_FRAGSY ;
 int ST_HEALTHX ;
 int ST_HEALTHY ;
 scalar_t__ ST_KEY0X ;
 scalar_t__ ST_KEY0Y ;
 scalar_t__ ST_KEY1X ;
 scalar_t__ ST_KEY1Y ;
 scalar_t__ ST_KEY2X ;
 scalar_t__ ST_KEY2Y ;
 int ST_MAXAMMO0WIDTH ;
 int ST_MAXAMMO0X ;
 int ST_MAXAMMO0Y ;
 int ST_MAXAMMO1WIDTH ;
 int ST_MAXAMMO1X ;
 int ST_MAXAMMO1Y ;
 int ST_MAXAMMO2WIDTH ;
 int ST_MAXAMMO2X ;
 int ST_MAXAMMO2Y ;
 int ST_MAXAMMO3WIDTH ;
 int ST_MAXAMMO3X ;
 int ST_MAXAMMO3Y ;
 int STlib_initBinIcon (int *,int ,int ,int ,int *,int *) ;
 int STlib_initMultIcon (int *,scalar_t__,scalar_t__,int ,int*,int *) ;
 int STlib_initNum (TYPE_2__*,int ,int ,int ,int *,int *,int ) ;
 int STlib_initPercent (int *,int ,int ,int ,int *,int *,int ) ;
 int * arms ;
 int armsbg ;
 int faces ;
 int* keyboxes ;
 int keys ;
 TYPE_6__* plyr ;
 int shortnum ;
 int st_armson ;
 int st_faceindex ;
 int st_fragscount ;
 int st_fragson ;
 int st_notdeathmatch ;
 int st_statusbaron ;
 int tallnum ;
 int tallpercent ;
 TYPE_2__* w_ammo ;
 int w_armor ;
 int * w_arms ;
 int w_armsbg ;
 int w_faces ;
 TYPE_2__ w_frags ;
 int w_health ;
 int * w_keyboxes ;
 TYPE_2__* w_maxammo ;
 TYPE_2__ w_ready ;
 TYPE_1__* weaponinfo ;

void ST_createWidgets(void)
{

    int i;


    STlib_initNum(&w_ready,
    ST_AMMOX,
    ST_AMMOY,
    tallnum,
    &plyr->ammo[weaponinfo[plyr->readyweapon].ammo],
    &st_statusbaron,
    ST_AMMOWIDTH );


    w_ready.data = plyr->readyweapon;


    STlib_initPercent(&w_health,
        ST_HEALTHX,
        ST_HEALTHY,
        tallnum,
        &plyr->health,
        &st_statusbaron,
        tallpercent);


    STlib_initBinIcon(&w_armsbg,
        ST_ARMSBGX,
        ST_ARMSBGY,
        armsbg,
        &st_notdeathmatch,
        &st_statusbaron);


    for(i=0;i<6;i++)
    {
 STlib_initMultIcon(&w_arms[i],
      ST_ARMSX+(i%3)*ST_ARMSXSPACE,
      ST_ARMSY+(i/3)*ST_ARMSYSPACE,
      arms[i], (int *) &plyr->weaponowned[i+1],
      &st_armson);
    }


    STlib_initNum(&w_frags,
    ST_FRAGSX,
    ST_FRAGSY,
    tallnum,
    &st_fragscount,
    &st_fragson,
    ST_FRAGSWIDTH);


    STlib_initMultIcon(&w_faces,
         ST_FACESX,
         ST_FACESY,
         faces,
         &st_faceindex,
         &st_statusbaron);


    STlib_initPercent(&w_armor,
        ST_ARMORX,
        ST_ARMORY,
        tallnum,
        &plyr->armorpoints,
        &st_statusbaron, tallpercent);


    STlib_initMultIcon(&w_keyboxes[0],
         ST_KEY0X,
         ST_KEY0Y,
         keys,
         &keyboxes[0],
         &st_statusbaron);

    STlib_initMultIcon(&w_keyboxes[1],
         ST_KEY1X,
         ST_KEY1Y,
         keys,
         &keyboxes[1],
         &st_statusbaron);

    STlib_initMultIcon(&w_keyboxes[2],
         ST_KEY2X,
         ST_KEY2Y,
         keys,
         &keyboxes[2],
         &st_statusbaron);


    STlib_initNum(&w_ammo[0],
    ST_AMMO0X,
    ST_AMMO0Y,
    shortnum,
    &plyr->ammo[0],
    &st_statusbaron,
    ST_AMMO0WIDTH);

    STlib_initNum(&w_ammo[1],
    ST_AMMO1X,
    ST_AMMO1Y,
    shortnum,
    &plyr->ammo[1],
    &st_statusbaron,
    ST_AMMO1WIDTH);

    STlib_initNum(&w_ammo[2],
    ST_AMMO2X,
    ST_AMMO2Y,
    shortnum,
    &plyr->ammo[2],
    &st_statusbaron,
    ST_AMMO2WIDTH);

    STlib_initNum(&w_ammo[3],
    ST_AMMO3X,
    ST_AMMO3Y,
    shortnum,
    &plyr->ammo[3],
    &st_statusbaron,
    ST_AMMO3WIDTH);


    STlib_initNum(&w_maxammo[0],
    ST_MAXAMMO0X,
    ST_MAXAMMO0Y,
    shortnum,
    &plyr->maxammo[0],
    &st_statusbaron,
    ST_MAXAMMO0WIDTH);

    STlib_initNum(&w_maxammo[1],
    ST_MAXAMMO1X,
    ST_MAXAMMO1Y,
    shortnum,
    &plyr->maxammo[1],
    &st_statusbaron,
    ST_MAXAMMO1WIDTH);

    STlib_initNum(&w_maxammo[2],
    ST_MAXAMMO2X,
    ST_MAXAMMO2Y,
    shortnum,
    &plyr->maxammo[2],
    &st_statusbaron,
    ST_MAXAMMO2WIDTH);

    STlib_initNum(&w_maxammo[3],
    ST_MAXAMMO3X,
    ST_MAXAMMO3Y,
    shortnum,
    &plyr->maxammo[3],
    &st_statusbaron,
    ST_MAXAMMO3WIDTH);

}
