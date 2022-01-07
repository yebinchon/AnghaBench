
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_5__ {TYPE_1__* mo; } ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ y; } ;


 void* FTOM (int ) ;
 int MTOF (scalar_t__) ;
 TYPE_3__ f_oldloc ;
 int m_h ;
 int m_w ;
 void* m_x ;
 void* m_x2 ;
 void* m_y ;
 void* m_y2 ;
 TYPE_2__* plr ;

void AM_doFollowPlayer(void)
{

    if (f_oldloc.x != plr->mo->x || f_oldloc.y != plr->mo->y)
    {
 m_x = FTOM(MTOF(plr->mo->x)) - m_w/2;
 m_y = FTOM(MTOF(plr->mo->y)) - m_h/2;
 m_x2 = m_x + m_w;
 m_y2 = m_y + m_h;
 f_oldloc.x = plr->mo->x;
 f_oldloc.y = plr->mo->y;






    }

}
