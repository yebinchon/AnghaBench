
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_14__ {int stream_count; TYPE_2__* streams; } ;
typedef TYPE_3__ sync_common_t ;
struct TYPE_12__ {double start; double duration; double stop; } ;
struct TYPE_15__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 int AV_NOPTS_VALUE ;
 scalar_t__ SYNC_TYPE_VIDEO ;
 int UpdateSCR (TYPE_2__*,TYPE_4__*) ;
 int alignStreams (TYPE_3__*,int ) ;
 int hb_list_count (int ) ;
 TYPE_4__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_4__*) ;

__attribute__((used)) static void computeInitialTS( sync_common_t * common,
                              sync_stream_t * first_stream )
{
    int ii;
    hb_buffer_t * prev, * buf;


    prev = ((void*)0);
    for (ii = 0; ii < hb_list_count(first_stream->in_queue);)
    {
        buf = hb_list_item(first_stream->in_queue, ii);

        if (!UpdateSCR(first_stream, buf))
        {
            hb_list_rem(first_stream->in_queue, buf);
        }
        else
        {
            ii++;
            if (first_stream->type == SYNC_TYPE_VIDEO && prev != ((void*)0))
            {
                double duration = buf->s.start - prev->s.start;
                if (duration > 0)
                {
                    prev->s.duration = duration;
                    prev->s.stop = buf->s.start;
                }
            }
            prev = buf;
        }
    }

    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];

        if (stream == first_stream)
        {

            continue;
        }

        int jj;
        prev = ((void*)0);
        for (jj = 0; jj < hb_list_count(stream->in_queue);)
        {
            buf = hb_list_item(stream->in_queue, jj);
            if (!UpdateSCR(stream, buf))
            {

                hb_list_rem(stream->in_queue, buf);
            }
            else
            {
                jj++;
                if (stream->type == SYNC_TYPE_VIDEO && prev != ((void*)0))
                {
                    double duration = buf->s.start - prev->s.start;
                    if (duration > 0)
                    {
                        prev->s.duration = duration;
                        prev->s.stop = buf->s.start;
                    }
                }
                prev = buf;
            }
        }
    }
    alignStreams(common, AV_NOPTS_VALUE);
}
