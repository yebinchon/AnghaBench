
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;


 int AM_changeWindowLoc () ;
 int AM_changeWindowScale () ;
 int AM_doFollowPlayer () ;
 scalar_t__ FRACUNIT ;
 int amclock ;
 int automapactive ;
 scalar_t__ followplayer ;
 scalar_t__ ftom_zoommul ;
 TYPE_1__ m_paninc ;

void AM_Ticker (void)
{

    if (!automapactive)
 return;

    amclock++;

    if (followplayer)
 AM_doFollowPlayer();


    if (ftom_zoommul != FRACUNIT)
 AM_changeWindowScale();


    if (m_paninc.x || m_paninc.y)
 AM_changeWindowLoc();




}
