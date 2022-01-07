
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_13__ {int stream_count; int found_first_pts; TYPE_2__* streams; } ;
typedef TYPE_3__ sync_common_t ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ start; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ INT64_MAX ;
 scalar_t__ SYNC_TYPE_SUBTITLE ;
 int computeInitialTS (TYPE_3__*,TYPE_2__*) ;
 int hb_buffer_close (TYPE_4__**) ;
 int hb_error (char*) ;
 scalar_t__ hb_list_count (int ) ;
 TYPE_4__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_4__*) ;

__attribute__((used)) static void checkFirstPts( sync_common_t * common )
{
    int ii;
    int64_t first_pts = INT64_MAX;
    sync_stream_t * first_stream = ((void*)0);

    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t *stream = &common->streams[ii];
        if (stream->type == SYNC_TYPE_SUBTITLE)
        {

            continue;
        }


        while (hb_list_count(stream->in_queue) > 0)
        {
            hb_buffer_t * buf = hb_list_item(stream->in_queue, 0);
            if (buf->s.start != AV_NOPTS_VALUE)
            {

                if (buf->s.start < first_pts)
                {
                    first_pts = buf->s.start;
                    first_stream = stream;
                }
                break;
            }
            else
            {
                hb_list_rem(stream->in_queue, buf);
                hb_buffer_close(&buf);
            }
        }
    }


    if (first_pts != INT64_MAX)
    {
        common->found_first_pts = 1;



        computeInitialTS(common, first_stream);


    }
    else
    {

        hb_error("checkFirstPts: No initial PTS found!\n");
    }
}
