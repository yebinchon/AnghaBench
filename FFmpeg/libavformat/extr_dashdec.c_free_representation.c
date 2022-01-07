
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct representation* buffer; } ;
struct representation {struct representation* url_template; TYPE_2__* ctx; int input; int parent; TYPE_1__ pb; struct representation* init_sec_buf; int init_section; int cur_seg; } ;
struct TYPE_4__ {int * pb; } ;


 int av_freep (struct representation**) ;
 int avformat_close_input (TYPE_2__**) ;
 int ff_format_io_close (int ,int *) ;
 int free_fragment (int *) ;
 int free_fragment_list (struct representation*) ;
 int free_timelines_list (struct representation*) ;

__attribute__((used)) static void free_representation(struct representation *pls)
{
    free_fragment_list(pls);
    free_timelines_list(pls);
    free_fragment(&pls->cur_seg);
    free_fragment(&pls->init_section);
    av_freep(&pls->init_sec_buf);
    av_freep(&pls->pb.buffer);
    ff_format_io_close(pls->parent, &pls->input);
    if (pls->ctx) {
        pls->ctx->pb = ((void*)0);
        avformat_close_input(&pls->ctx);
    }

    av_freep(&pls->url_template);
    av_freep(&pls);
}
