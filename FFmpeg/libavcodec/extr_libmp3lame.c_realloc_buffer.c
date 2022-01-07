
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer_size; int buffer_index; int buffer; int avctx; } ;
typedef TYPE_1__ LAMEContext ;


 int BUFFER_SIZE ;
 int av_reallocp (int *,int) ;
 int ff_dlog (int ,char*,int,int) ;

__attribute__((used)) static int realloc_buffer(LAMEContext *s)
{
    if (!s->buffer || s->buffer_size - s->buffer_index < BUFFER_SIZE) {
        int new_size = s->buffer_index + 2 * BUFFER_SIZE, err;

        ff_dlog(s->avctx, "resizing output buffer: %d -> %d\n", s->buffer_size,
                new_size);
        if ((err = av_reallocp(&s->buffer, new_size)) < 0) {
            s->buffer_size = s->buffer_index = 0;
            return err;
        }
        s->buffer_size = new_size;
    }
    return 0;
}
