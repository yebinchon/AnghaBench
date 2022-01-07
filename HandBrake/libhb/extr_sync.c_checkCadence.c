
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ start; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ hb_buffer_t ;


 int BT ;
 int BTB_PROG ;
 int BT_PROG ;
 int PROGRESSIVE ;
 int REPEAT_FIRST ;
 int TB ;
 int TBT_PROG ;
 int TB_PROG ;
 int TOP_FIRST ;
 int hb_log (char*,float) ;

__attribute__((used)) static void checkCadence( int * cadence, hb_buffer_t * buf )
{

    int i = 0;
    for (i = 11; i > 0; i--)
    {
        cadence[i] = cadence[i-1];
    }

    if (!(buf->s.flags & PROGRESSIVE) && !(buf->s.flags & TOP_FIRST))
    {





        cadence[0] = BT;
    }
    else if (!(buf->s.flags & PROGRESSIVE) && (buf->s.flags & TOP_FIRST))
    {




        cadence[0] = TB;
    }
    else if ((buf->s.flags & PROGRESSIVE) &&
             !(buf->s.flags & TOP_FIRST) && !(buf->s.flags & REPEAT_FIRST))
    {





        cadence[0] = BT_PROG;
    }
    else if ((buf->s.flags & PROGRESSIVE) &&
             !(buf->s.flags & TOP_FIRST) && (buf->s.flags & REPEAT_FIRST))
    {





        cadence[0] = BTB_PROG;
    }
    else if ((buf->s.flags & PROGRESSIVE) &&
             (buf->s.flags & TOP_FIRST) && !(buf->s.flags & REPEAT_FIRST))
    {





        cadence[0] = TB_PROG;
    }
    else if ((buf->s.flags & PROGRESSIVE) &&
             (buf->s.flags & TOP_FIRST) && (buf->s.flags & REPEAT_FIRST))
    {





        cadence[0] = TBT_PROG;
    }

    if ((cadence[2] <= TB) && (cadence[1] <= TB) &&
        (cadence[0] > TB) && (cadence[11]))
    {
        hb_log("%fs: Video -> Film", (float)buf->s.start / 90000);
    }
    if ((cadence[2] > TB) && (cadence[1] <= TB) &&
        (cadence[0] <= TB) && (cadence[11]))
    {
        hb_log("%fs: Film -> Video", (float)buf->s.start / 90000);
    }
}
