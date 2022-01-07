
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
typedef TYPE_1__ SRTContext ;


 int av_bprint_append_data (int *,char const*,int) ;

__attribute__((used)) static void srt_text_cb(void *priv, const char *text, int len)
{
    SRTContext *s = priv;
    av_bprint_append_data(&s->buffer, text, len);
}
