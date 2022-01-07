
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* oformat; } ;
typedef int int64_t ;
struct TYPE_2__ {int (* get_output_timestamp ) (struct AVFormatContext*,int,int *,int *) ;} ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (struct AVFormatContext*,int,int *,int *) ;

int av_get_output_timestamp(struct AVFormatContext *s, int stream,
                            int64_t *dts, int64_t *wall)
{
    if (!s->oformat || !s->oformat->get_output_timestamp)
        return AVERROR(ENOSYS);
    s->oformat->get_output_timestamp(s, stream, dts, wall);
    return 0;
}
