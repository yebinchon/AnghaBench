
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (char*) ;
 int MTV_HEADER_SIZE ;
 char MTV_IMAGE_DEFAULT_BPP ;

__attribute__((used)) static int mtv_probe(const AVProbeData *p)
{



    if (p->buf_size < 57)
        return 0;


    if (*p->buf != 'A' || *(p->buf + 1) != 'M' || *(p->buf + 2) != 'V')
        return 0;


    if (p->buf[43] != 'M' || p->buf[44] != 'P' || p->buf[45] != '3')
        return 0;


    if(!(p->buf[51] && AV_RL16(&p->buf[52]) | AV_RL16(&p->buf[54])))
        return 0;


    if(!AV_RL16(&p->buf[52]) || !AV_RL16(&p->buf[54]))
    {
        if(!!AV_RL16(&p->buf[56]))
            return AVPROBE_SCORE_EXTENSION;
        else
            return 0;
    }






    if(p->buf[51] != MTV_IMAGE_DEFAULT_BPP)
        return AVPROBE_SCORE_EXTENSION / 2;





    if (p->buf_size < MTV_HEADER_SIZE)
        return AVPROBE_SCORE_EXTENSION;

    return AVPROBE_SCORE_MAX;
}
