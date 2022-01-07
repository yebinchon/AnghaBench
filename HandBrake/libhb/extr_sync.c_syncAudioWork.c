
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_8__* stream; int common; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_13__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_11__ {int flags; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_15__ {int flush; int common; scalar_t__ done; } ;


 int FlushBuffer (int ) ;
 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int QueueBuffer (TYPE_8__*,TYPE_4__*) ;
 int Synchronize (TYPE_8__*) ;
 int flushStreamsLock (int ) ;

__attribute__((used)) static int syncAudioWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                          hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;

    if (pv->stream->done)
    {
        FlushBuffer(pv->stream->common);
        return HB_WORK_DONE;
    }
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        pv->stream->flush = 1;
        flushStreamsLock(pv->common);
        return HB_WORK_DONE;
    }

    *buf_in = ((void*)0);
    QueueBuffer(pv->stream, in);
    Synchronize(pv->stream);

    if (pv->stream->done)
    {
        FlushBuffer(pv->stream->common);
        return HB_WORK_DONE;
    }
    return HB_WORK_OK;
}
