
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FFTextReader ;
typedef int AVBPrint ;


 int av_bprint_chars (int *,char,int) ;
 int av_bprint_clear (int *) ;
 int ff_text_pos (int *) ;
 char ff_text_r8 (int *) ;

__attribute__((used)) static int64_t get_line(AVBPrint *buf, FFTextReader *tr)
{
    int64_t pos = ff_text_pos(tr);

    av_bprint_clear(buf);
    for (;;) {
        char c = ff_text_r8(tr);
        if (!c)
            break;
        av_bprint_chars(buf, c, 1);
        if (c == '\n')
            break;
    }
    return pos;
}
