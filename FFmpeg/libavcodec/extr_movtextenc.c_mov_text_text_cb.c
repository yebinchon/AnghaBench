
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int text_pos; int byte_count; int buffer; } ;
typedef TYPE_1__ MovTextContext ;


 int av_bprint_append_data (int *,char const*,int) ;
 int utf8_strlen (char const*,int) ;

__attribute__((used)) static void mov_text_text_cb(void *priv, const char *text, int len)
{
    uint16_t utf8_len = utf8_strlen(text, len);
    MovTextContext *s = priv;
    av_bprint_append_data(&s->buffer, text, len);

    s->text_pos += utf8_len ? utf8_len : len;
    s->byte_count += len;
}
