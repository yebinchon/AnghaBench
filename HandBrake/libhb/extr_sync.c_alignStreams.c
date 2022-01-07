
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {TYPE_4__* audio; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_5__ audio; int in_queue; } ;
typedef TYPE_7__ sync_stream_t ;
struct TYPE_23__ {int stream_count; TYPE_7__* streams; TYPE_1__* job; } ;
typedef TYPE_8__ sync_common_t ;
typedef scalar_t__ int64_t ;
struct TYPE_21__ {scalar_t__ start; } ;
struct TYPE_24__ {TYPE_6__ s; } ;
typedef TYPE_9__ hb_buffer_t ;
struct TYPE_17__ {int codec; } ;
struct TYPE_18__ {TYPE_2__ out; } ;
struct TYPE_19__ {TYPE_3__ config; } ;
struct TYPE_16__ {scalar_t__ align_av_start; } ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_ACODEC_PASS_FLAG ;
 scalar_t__ SYNC_TYPE_AUDIO ;
 int alignStream (TYPE_8__*,TYPE_7__*,scalar_t__) ;
 int hb_buffer_close (TYPE_9__**) ;
 TYPE_9__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_9__*) ;

__attribute__((used)) static void alignStreams( sync_common_t * common, int64_t pts )
{
    int ii;
    hb_buffer_t * buf;

    if (common->job->align_av_start)
    {
        int64_t first_pts = AV_NOPTS_VALUE;
        int audio_passthru = 0;

        for (ii = 0; ii < common->stream_count; ii++)
        {
            sync_stream_t * stream = &common->streams[ii];

            buf = hb_list_item(stream->in_queue, 0);



            while (buf != ((void*)0) && buf->s.start < pts)
            {
                hb_list_rem(stream->in_queue, buf);
                hb_buffer_close(&buf);
                buf = hb_list_item(stream->in_queue, 0);
            }
            if (buf == ((void*)0))
            {
                continue;
            }
            if (stream->type == SYNC_TYPE_AUDIO &&
                stream->audio.audio->config.out.codec & HB_ACODEC_PASS_FLAG)
            {





                audio_passthru = 1;
                if (first_pts < buf->s.start)
                {
                    first_pts = buf->s.start;
                }
            }
            else if (!audio_passthru)
            {






                if (first_pts == AV_NOPTS_VALUE || first_pts > buf->s.start)
                {
                    first_pts = buf->s.start;
                }
            }
        }
        if (first_pts != AV_NOPTS_VALUE)
        {
            for (ii = 0; ii < common->stream_count; ii++)
            {

                alignStream(common, &common->streams[ii], first_pts);
            }
        }
    }
}
