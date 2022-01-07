
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;


 size_t AM_NUMMARKPOINTS ;
 int m_h ;
 int m_w ;
 scalar_t__ m_x ;
 scalar_t__ m_y ;
 size_t markpointnum ;
 TYPE_1__* markpoints ;

void AM_addMark(void)
{
    markpoints[markpointnum].x = m_x + m_w/2;
    markpoints[markpointnum].y = m_y + m_h/2;
    markpointnum = (markpointnum + 1) % AM_NUMMARKPOINTS;

}
