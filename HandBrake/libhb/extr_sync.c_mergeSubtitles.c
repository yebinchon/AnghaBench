
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int list_current; int merge; } ;
struct TYPE_16__ {TYPE_4__ sanitizer; } ;
struct TYPE_18__ {TYPE_1__ subtitle; } ;
typedef TYPE_3__ sync_stream_t ;
typedef TYPE_4__ subtitle_sanitizer_t ;
struct TYPE_17__ {int flags; scalar_t__ stop; } ;
struct TYPE_20__ {TYPE_2__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_BUF_FLAG_EOF ;
 int hb_buffer_list_append (int *,TYPE_5__*) ;
 TYPE_5__* hb_buffer_list_clear (int *) ;
 scalar_t__ hb_buffer_list_count (int *) ;
 TYPE_5__* hb_buffer_list_head (int *) ;
 TYPE_5__* hb_buffer_list_rem_head (int *) ;
 int mergeSubtitleOverlaps (TYPE_4__*) ;
 TYPE_5__* setSubDuration (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static hb_buffer_t * mergeSubtitles(sync_stream_t * stream)
{
    hb_buffer_t * buf;
    hb_buffer_list_t list;
    subtitle_sanitizer_t * sanitizer = &stream->subtitle.sanitizer;

    hb_buffer_list_clear(&list);

    if (!sanitizer->merge)
    {


        while (hb_buffer_list_count(&sanitizer->list_current) > 0)
        {
            buf = hb_buffer_list_head(&sanitizer->list_current);
            if (!(buf->s.flags & HB_BUF_FLAG_EOF) &&
                buf->s.stop != AV_NOPTS_VALUE)
            {
                buf = hb_buffer_list_rem_head(&sanitizer->list_current);
                buf = setSubDuration(stream, buf);
                hb_buffer_list_append(&list, buf);
            }
            else
            {
                break;
            }
        }
        return hb_buffer_list_clear(&list);
    }


    while (hb_buffer_list_count(&sanitizer->list_current) > 0)
    {
        buf = hb_buffer_list_head(&sanitizer->list_current);
        if (buf->s.flags & HB_BUF_FLAG_EOF)
        {

            buf = hb_buffer_list_rem_head(&sanitizer->list_current);
            hb_buffer_list_append(&list, buf);
            break;
        }

        int result = mergeSubtitleOverlaps(sanitizer);
        if (result < 0)
        {

            break;
        }


        buf = hb_buffer_list_rem_head(&sanitizer->list_current);
        if (buf != ((void*)0) && !(buf->s.flags & HB_BUF_FLAG_EOF))
        {
            buf = setSubDuration(stream, buf);
            hb_buffer_list_append(&list, buf);
        }
    }

    return hb_buffer_list_clear(&list);
}
