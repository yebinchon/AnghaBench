
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int list_current; } ;
typedef TYPE_2__ subtitle_sanitizer_t ;
typedef scalar_t__ int64_t ;
struct TYPE_16__ {int flags; scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_18__ {TYPE_1__ s; struct TYPE_18__* next; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_BUF_FLAG_EOF ;
 scalar_t__ INT64_MAX ;
 TYPE_3__* findOverlap (TYPE_2__*,scalar_t__,scalar_t__*) ;
 int hb_buffer_close (TYPE_3__**) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 TYPE_3__* hb_buffer_list_clear (int *) ;
 TYPE_3__* hb_buffer_list_head (int *) ;
 int hb_buffer_list_prepend (int *,TYPE_3__*) ;
 int hb_buffer_list_rem (int *,TYPE_3__*) ;
 TYPE_3__* merge_ssa (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static int mergeSubtitleOverlaps(subtitle_sanitizer_t *sanitizer)
{
    hb_buffer_t * merged_buf = ((void*)0);
    hb_buffer_t * a, * b;

    a = hb_buffer_list_head(&sanitizer->list_current);
    if (a != ((void*)0) && (a->s.flags & HB_BUF_FLAG_EOF))
    {

        return 0;
    }
    if (a == ((void*)0) ||
        a->s.start == AV_NOPTS_VALUE || a->s.stop == AV_NOPTS_VALUE)
    {

        return -1;
    }
    b = a->next;
    if (b != ((void*)0) && a->s.stop <= b->s.start)
    {

        return 0;
    }





    while (b != ((void*)0) &&
           b->s.start < a->s.stop && !(b->s.flags & HB_BUF_FLAG_EOF))
    {
        if (b->s.start == AV_NOPTS_VALUE || b->s.stop == AV_NOPTS_VALUE)
        {

            return -1;
        }
        b = b->next;
    }
    if (b == ((void*)0))
    {

        return -1;
    }

    hb_buffer_list_t merged_list;
    int64_t start, stop, last;

    if (b->s.flags & HB_BUF_FLAG_EOF)
    {
        last = INT64_MAX;
    }
    else
    {
        last = b->s.start;
    }

    hb_buffer_list_clear(&merged_list);
    a = hb_buffer_list_head(&sanitizer->list_current);
    stop = start = a->s.start;
    while (start < last)
    {
        hb_buffer_t * merge = findOverlap(sanitizer, start, &stop);
        if (merge == ((void*)0))
        {
            break;
        }
        a = merge;
        merged_buf = ((void*)0);
        while (a != ((void*)0))
        {
            hb_buffer_t * tmp;

            tmp = merge_ssa(merged_buf, a);
            hb_buffer_close(&merged_buf);
            merged_buf = tmp;

            a = a->next;
        }
        merged_buf->s.stop = stop;
        hb_buffer_close(&merge);
        hb_buffer_list_append(&merged_list, merged_buf);
        start = stop;


        a = hb_buffer_list_head(&sanitizer->list_current);
        while (a != ((void*)0) && a->s.start < stop &&
               !(a->s.flags & HB_BUF_FLAG_EOF))
        {
            hb_buffer_t * next = a->next;
            if (a->s.stop <= stop)
            {

                hb_buffer_list_rem(&sanitizer->list_current, a);
                hb_buffer_close(&a);
            }
            else
            {
                a->s.start = stop;
            }
            a = next;
        }
    }
    merged_buf = hb_buffer_list_clear(&merged_list);
    hb_buffer_list_prepend(&sanitizer->list_current, merged_buf);

    return 0;
}
