
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int list_current; } ;
typedef TYPE_2__ subtitle_sanitizer_t ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {int flags; scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int HB_BUF_FLAG_EOF ;
 scalar_t__ INT64_MAX ;
 TYPE_3__* hb_buffer_dup (TYPE_3__*) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 TYPE_3__* hb_buffer_list_clear (int *) ;
 TYPE_3__* hb_buffer_list_head (int *) ;

__attribute__((used)) static hb_buffer_t * findOverlap(subtitle_sanitizer_t *sanitizer,
                                 int64_t start, int64_t *stop_out)
{
    hb_buffer_list_t list;
    hb_buffer_t * buf;
    int64_t stop;

    stop = INT64_MAX;
    hb_buffer_list_clear(&list);
    buf = hb_buffer_list_head(&sanitizer->list_current);
    while (buf != ((void*)0))
    {
        if (buf->s.flags & HB_BUF_FLAG_EOF)
        {
            break;
        }
        if (buf->s.start > start)
        {
            if (stop > buf->s.start)
            {
                *stop_out = buf->s.start;
            }
            break;
        }
        if (buf->s.start <= start && start < buf->s.stop)
        {
            hb_buffer_t * tmp = hb_buffer_dup(buf);
            tmp->s.start = start;
            hb_buffer_list_append(&list, tmp);
            if (stop > buf->s.stop)
            {
                stop = buf->s.stop;
                *stop_out = stop;
            }
        }
        buf = buf->next;
    }

    return hb_buffer_list_clear(&list);
}
