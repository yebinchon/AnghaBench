
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alignment_applied; } ;
typedef TYPE_1__ SRTContext ;


 int srt_print (TYPE_1__*,char*,int) ;

__attribute__((used)) static void srt_alignment_cb(void *priv, int alignment)
{
    SRTContext *s = priv;
    if (!s->alignment_applied && alignment >= 0) {
        srt_print(s, "{\\an%d}", alignment);
        s->alignment_applied = 1;
    }
}
