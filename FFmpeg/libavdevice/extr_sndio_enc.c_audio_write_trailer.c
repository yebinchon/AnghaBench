
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int buffer_offset; int buffer; int hdl; } ;
typedef TYPE_1__ SndioData ;
typedef TYPE_2__ AVFormatContext ;


 int ff_sndio_close (TYPE_1__*) ;
 int sio_write (int ,int ,int ) ;

__attribute__((used)) static int audio_write_trailer(AVFormatContext *s1)
{
    SndioData *s = s1->priv_data;

    sio_write(s->hdl, s->buffer, s->buffer_offset);

    ff_sndio_close(s);

    return 0;
}
