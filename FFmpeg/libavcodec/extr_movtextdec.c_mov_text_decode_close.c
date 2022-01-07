
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_data; } ;
typedef int MovTextContext ;
typedef TYPE_1__ AVCodecContext ;


 int mov_text_cleanup (int *) ;
 int mov_text_cleanup_ftab (int *) ;

__attribute__((used)) static int mov_text_decode_close(AVCodecContext *avctx)
{
    MovTextContext *m = avctx->priv_data;
    mov_text_cleanup_ftab(m);
    mov_text_cleanup(m);
    return 0;
}
