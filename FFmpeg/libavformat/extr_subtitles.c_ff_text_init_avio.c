
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ buf_pos; void** buf; int * pb; scalar_t__ buf_len; } ;
typedef TYPE_1__ FFTextReader ;
typedef int AVIOContext ;


 int AV_LOG_INFO ;
 scalar_t__ FF_UTF16BE ;
 scalar_t__ FF_UTF16LE ;
 scalar_t__ FF_UTF_8 ;
 int av_log (void*,int ,char*) ;
 void* avio_r8 (int *) ;
 scalar_t__ strncmp (char*,void**,int) ;

void ff_text_init_avio(void *s, FFTextReader *r, AVIOContext *pb)
{
    int i;
    r->pb = pb;
    r->buf_pos = r->buf_len = 0;
    r->type = FF_UTF_8;
    for (i = 0; i < 2; i++)
        r->buf[r->buf_len++] = avio_r8(r->pb);
    if (strncmp("\xFF\xFE", r->buf, 2) == 0) {
        r->type = FF_UTF16LE;
        r->buf_pos += 2;
    } else if (strncmp("\xFE\xFF", r->buf, 2) == 0) {
        r->type = FF_UTF16BE;
        r->buf_pos += 2;
    } else {
        r->buf[r->buf_len++] = avio_r8(r->pb);
        if (strncmp("\xEF\xBB\xBF", r->buf, 3) == 0) {

            r->buf_pos += 3;
        }
    }
    if (s && (r->type == FF_UTF16LE || r->type == FF_UTF16BE))
        av_log(s, AV_LOG_INFO,
               "UTF16 is automatically converted to UTF8, do not specify a character encoding\n");
}
