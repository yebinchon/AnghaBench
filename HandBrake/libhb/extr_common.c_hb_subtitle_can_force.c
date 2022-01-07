
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGSSUB ;
 int VOBSUB ;

int hb_subtitle_can_force( int source )
{
    return source == VOBSUB || source == PGSSUB;
}
