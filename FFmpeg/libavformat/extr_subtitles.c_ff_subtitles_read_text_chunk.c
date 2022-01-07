
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eol_buf ;
typedef int FFTextReader ;
typedef int AVBPrint ;


 int av_bprint_chars (int *,char,int) ;
 int av_bprint_clear (int *) ;
 int av_bprintf (int *,char*,char*) ;
 char ff_text_r8 (int *) ;
 scalar_t__ is_eol (char) ;

void ff_subtitles_read_text_chunk(FFTextReader *tr, AVBPrint *buf)
{
    char eol_buf[5], last_was_cr = 0;
    int n = 0, i = 0, nb_eol = 0;

    av_bprint_clear(buf);

    for (;;) {
        char c = ff_text_r8(tr);

        if (!c)
            break;


        if (n == 0 && is_eol(c))
            continue;


        if (is_eol(c)) {
            nb_eol += c == '\n' || last_was_cr;
            if (nb_eol == 2)
                break;
            eol_buf[i++] = c;
            if (i == sizeof(eol_buf) - 1)
                break;
            last_was_cr = c == '\r';
            continue;
        }



        if (i) {
            eol_buf[i] = 0;
            av_bprintf(buf, "%s", eol_buf);
            i = nb_eol = 0;
        }

        av_bprint_chars(buf, c, 1);
        n++;
    }
}
