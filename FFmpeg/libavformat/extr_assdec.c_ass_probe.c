
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int buf_size; int buf; } ;
typedef int FFTextReader ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int ff_text_init_buf (int *,int ,int ) ;
 char ff_text_peek_r8 (int *) ;
 int ff_text_r8 (int *) ;
 int ff_text_read (int *,char*,int) ;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static int ass_probe(const AVProbeData *p)
{
    char buf[13];
    FFTextReader tr;
    ff_text_init_buf(&tr, p->buf, p->buf_size);

    while (ff_text_peek_r8(&tr) == '\r' || ff_text_peek_r8(&tr) == '\n')
        ff_text_r8(&tr);

    ff_text_read(&tr, buf, sizeof(buf));

    if (!memcmp(buf, "[Script Info]", 13))
        return AVPROBE_SCORE_MAX;

    return 0;
}
