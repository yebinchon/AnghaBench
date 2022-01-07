
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTOM (int ) ;
 int f_h ;
 int f_w ;
 int m_h ;
 int m_w ;
 scalar_t__ m_x ;
 scalar_t__ m_x2 ;
 scalar_t__ m_y ;
 scalar_t__ m_y2 ;

void AM_activateNewScale(void)
{
    m_x += m_w/2;
    m_y += m_h/2;
    m_w = FTOM(f_w);
    m_h = FTOM(f_h);
    m_x -= m_w/2;
    m_y -= m_h/2;
    m_x2 = m_x + m_w;
    m_y2 = m_y + m_h;
}
