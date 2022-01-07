
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int stack_ptr; int avctx; } ;
typedef TYPE_1__ SRTContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int srt_close_tag (TYPE_1__*,int ) ;
 int srt_stack_find (TYPE_1__*,char const) ;
 int srt_stack_pop (TYPE_1__*) ;
 scalar_t__ srt_stack_push (TYPE_1__*,char const) ;

__attribute__((used)) static void srt_stack_push_pop(SRTContext *s, const char c, int close)
{
    if (close) {
        int i = c ? srt_stack_find(s, c) : 0;
        if (i < 0)
            return;
        while (s->stack_ptr != i)
            srt_close_tag(s, srt_stack_pop(s));
    } else if (srt_stack_push(s, c) < 0)
        av_log(s->avctx, AV_LOG_ERROR, "tag stack overflow\n");
}
