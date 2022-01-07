
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; char* buf; } ;
typedef TYPE_1__ AVProbeData ;
typedef int AVIOContext ;


 int AVPROBE_SCORE_MAX ;
 int ffio_init_context (int *,char*,int,int ,int *,int *,int *,int *) ;
 scalar_t__ parse_multipart_header (int *,int*,char*,int *) ;

__attribute__((used)) static int mpjpeg_read_probe(const AVProbeData *p)
{
    AVIOContext pb;
    int ret = 0;
    int size = 0;

    if (p->buf_size < 2 || p->buf[0] != '-' || p->buf[1] != '-')
        return 0;

    ffio_init_context(&pb, p->buf, p->buf_size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    ret = (parse_multipart_header(&pb, &size, "--", ((void*)0)) >= 0) ? AVPROBE_SCORE_MAX : 0;

    return ret;
}
