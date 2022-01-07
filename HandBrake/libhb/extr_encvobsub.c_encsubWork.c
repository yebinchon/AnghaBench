
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* subtitle; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_11__ {int flags; } ;
struct TYPE_13__ {TYPE_2__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_10__ {scalar_t__ source; } ;


 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 scalar_t__ VOBSUB ;
 int hb_buffer_close (TYPE_4__**) ;
 TYPE_4__* hb_buffer_eof_init () ;
 int hb_log (char*) ;

int encsubWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                hb_buffer_t ** buf_out )
{
    hb_buffer_t * in = *buf_in;

    if (w->subtitle->source != VOBSUB)
    {

        hb_log("encvobsub: invalid subtitle source");
        hb_buffer_close( buf_in );
        *buf_out = hb_buffer_eof_init();
    }
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {

        *buf_out = in;
        *buf_in = ((void*)0);
        return HB_WORK_DONE;
    }





    if (buf_out)
    {
        *buf_out = in;
        *buf_in = ((void*)0);
    }

    return HB_WORK_OK;
}
