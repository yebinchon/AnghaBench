
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hdl; int buffer; } ;
typedef TYPE_1__ SndioData ;


 int av_freep (int *) ;
 int sio_close (scalar_t__) ;

int ff_sndio_close(SndioData *s)
{
    av_freep(&s->buffer);

    if (s->hdl)
        sio_close(s->hdl);

    return 0;
}
