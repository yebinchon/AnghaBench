
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__** streams; } ;
struct TYPE_4__ {int channels; int sample_rate; } ;
struct TYPE_3__ {TYPE_2__* codecpar; } ;
typedef TYPE_2__ AVCodecParameters ;



__attribute__((used)) static int daud_write_header(struct AVFormatContext *s)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    if (par->channels!=6 || par->sample_rate!=96000)
        return -1;
    return 0;
}
