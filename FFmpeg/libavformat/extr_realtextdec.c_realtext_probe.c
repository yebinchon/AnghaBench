
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int buf_size; int buf; } ;
typedef int FFTextReader ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int av_strncasecmp (char*,char*,int) ;
 int ff_text_init_buf (int *,int ,int ) ;
 int ff_text_read (int *,char*,int) ;

__attribute__((used)) static int realtext_probe(const AVProbeData *p)
{
    char buf[7];
    FFTextReader tr;
    ff_text_init_buf(&tr, p->buf, p->buf_size);
    ff_text_read(&tr, buf, sizeof(buf));

    return !av_strncasecmp(buf, "<window", 7) ? AVPROBE_SCORE_EXTENSION : 0;
}
