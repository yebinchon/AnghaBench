
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text_pos; int byte_count; int buffer; } ;
typedef TYPE_1__ MovTextContext ;


 int av_bprint_append_data (int *,char*,int) ;

__attribute__((used)) static void mov_text_new_line_cb(void *priv, int forced)
{
    MovTextContext *s = priv;
    av_bprint_append_data(&s->buffer, "\n", 1);
    s->text_pos += 1;
    s->byte_count += 1;
}
