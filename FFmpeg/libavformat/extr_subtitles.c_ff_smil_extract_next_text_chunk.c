
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTextReader ;
typedef int AVBPrint ;


 int av_bprint_chars (int *,char,int) ;
 char ff_text_r8 (int *) ;

int ff_smil_extract_next_text_chunk(FFTextReader *tr, AVBPrint *buf, char *c)
{
    int i = 0;
    char end_chr;

    if (!*c)
        *c = ff_text_r8(tr);
    if (!*c)
        return 0;

    end_chr = *c == '<' ? '>' : '<';
    do {
        av_bprint_chars(buf, *c, 1);
        *c = ff_text_r8(tr);
        i++;
    } while (*c != end_chr && *c);
    if (end_chr == '>') {
        av_bprint_chars(buf, '>', 1);
        *c = 0;
    }
    return i;
}
