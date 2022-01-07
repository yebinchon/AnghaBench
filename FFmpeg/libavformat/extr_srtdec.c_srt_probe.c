
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
 scalar_t__ ff_subtitles_read_line (int *,char*,int) ;
 int ff_text_init_buf (int *,int ,int ) ;
 char ff_text_peek_r8 (int *) ;
 int ff_text_r8 (int *) ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ strstr (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int srt_probe(const AVProbeData *p)
{
    int v;
    char buf[64], *pbuf;
    FFTextReader tr;

    ff_text_init_buf(&tr, p->buf, p->buf_size);

    while (ff_text_peek_r8(&tr) == '\r' || ff_text_peek_r8(&tr) == '\n')
        ff_text_r8(&tr);





    if (ff_subtitles_read_line(&tr, buf, sizeof(buf)) < 0 ||
        strtol(buf, &pbuf, 10) < 0 || pbuf == buf)
        return 0;


    if (ff_subtitles_read_line(&tr, buf, sizeof(buf)) < 0)
        return 0;
    pbuf = buf;
    if (buf[0] == '-')
        pbuf++;
    if (pbuf[0] >= '0' && pbuf[0] <= '9' && strstr(buf, " --> ")
        && sscanf(buf, "%*d:%*d:%*d%*1[,.]%*d --> %*d:%*d:%*d%*1[,.]%d", &v) == 1)
        return AVPROBE_SCORE_MAX;

    return 0;
}
