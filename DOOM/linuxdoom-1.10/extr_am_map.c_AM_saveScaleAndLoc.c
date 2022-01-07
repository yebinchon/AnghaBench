
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m_h ;
 int m_w ;
 int m_x ;
 int m_y ;
 int old_m_h ;
 int old_m_w ;
 int old_m_x ;
 int old_m_y ;

void AM_saveScaleAndLoc(void)
{
    old_m_x = m_x;
    old_m_y = m_y;
    old_m_w = m_w;
    old_m_h = m_h;
}
