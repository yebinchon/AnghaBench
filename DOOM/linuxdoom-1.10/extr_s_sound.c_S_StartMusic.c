
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_ChangeMusic (int,int) ;

void S_StartMusic(int m_id)
{
    S_ChangeMusic(m_id, 0);
}
