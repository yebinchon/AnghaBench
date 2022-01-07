
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int scr_changes; } ;
struct TYPE_12__ {TYPE_2__ demux; TYPE_3__* job; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_13__ {scalar_t__ fifo_in; } ;
typedef TYPE_5__ hb_subtitle_t ;
struct TYPE_9__ {scalar_t__ fifo_in; } ;
struct TYPE_14__ {TYPE_1__ priv; } ;
typedef TYPE_6__ hb_audio_t ;
struct TYPE_11__ {int list_subtitle; int list_audio; scalar_t__ fifo_mpeg2; } ;


 int hb_buffer_eof_init () ;
 void* hb_list_item (int ,int) ;
 int hb_log (char*,int ) ;
 int push_buf (TYPE_4__*,scalar_t__,int ) ;

__attribute__((used)) static void reader_send_eof( hb_work_private_t * r )
{
    int ii;


    push_buf(r, r->job->fifo_mpeg2, hb_buffer_eof_init());

    hb_audio_t *audio;
    for (ii = 0; (audio = hb_list_item(r->job->list_audio, ii)); ++ii)
    {
        if (audio->priv.fifo_in)
            push_buf(r, audio->priv.fifo_in, hb_buffer_eof_init());
    }

    hb_subtitle_t *subtitle;
    for (ii = 0; (subtitle = hb_list_item(r->job->list_subtitle, ii)); ++ii)
    {
        if (subtitle->fifo_in)
        {
            push_buf(r, subtitle->fifo_in, hb_buffer_eof_init());
        }
    }
    hb_log("reader: done. %d scr changes", r->demux.scr_changes);
}
