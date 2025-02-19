
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct AVFormatContext {TYPE_3__* priv_data; } ;
struct TYPE_12__ {int pb; } ;
struct TYPE_9__ {int filename; } ;
struct TYPE_11__ {TYPE_4__* avf; TYPE_2__* segment_list_entries; TYPE_1__ cur_entry; int frames; int times; int format_options; int list_pb; scalar_t__ list; int write_header_trailer; } ;
struct TYPE_10__ {int filename; struct TYPE_10__* next; } ;
typedef TYPE_2__ SegmentListEntry ;
typedef TYPE_3__ SegmentContext ;
typedef TYPE_4__ AVFormatContext ;


 int av_dict_free (int *) ;
 int av_free (TYPE_2__*) ;
 int av_freep (int *) ;
 int av_opt_free (TYPE_3__*) ;
 int av_write_trailer (TYPE_4__*) ;
 int avformat_free_context (TYPE_4__*) ;
 int close_null_ctxp (int *) ;
 int ff_format_io_close (struct AVFormatContext*,int *) ;
 int open_null_ctx (int *) ;
 int segment_end (struct AVFormatContext*,int,int) ;

__attribute__((used)) static int seg_write_trailer(struct AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    SegmentListEntry *cur, *next;
    int ret = 0;

    if (!oc)
        goto fail;

    if (!seg->write_header_trailer) {
        if ((ret = segment_end(s, 0, 1)) < 0)
            goto fail;
        if ((ret = open_null_ctx(&oc->pb)) < 0)
            goto fail;
        ret = av_write_trailer(oc);
        close_null_ctxp(&oc->pb);
    } else {
        ret = segment_end(s, 1, 1);
    }
fail:
    if (seg->list)
        ff_format_io_close(s, &seg->list_pb);

    av_dict_free(&seg->format_options);
    av_opt_free(seg);
    av_freep(&seg->times);
    av_freep(&seg->frames);
    av_freep(&seg->cur_entry.filename);

    cur = seg->segment_list_entries;
    while (cur) {
        next = cur->next;
        av_freep(&cur->filename);
        av_free(cur);
        cur = next;
    }

    avformat_free_context(oc);
    seg->avf = ((void*)0);
    return ret;
}
