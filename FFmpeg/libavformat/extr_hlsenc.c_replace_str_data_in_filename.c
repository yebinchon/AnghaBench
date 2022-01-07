
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int av_bprint_append_data (int *,char const*,int) ;
 scalar_t__ av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int ,int ) ;
 int av_bprint_is_complete (int *) ;
 int av_bprintf (int *,char*,char const*) ;

__attribute__((used)) static int replace_str_data_in_filename(char **s, const char *filename, char placeholder, const char *datastring)
{
    const char *p;
    char *new_filename;
    char c;
    int addchar_count;
    int found_count = 0;
    AVBPrint buf;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    p = filename;
    for (;;) {
        c = *p;
        if (c == '\0')
            break;
        if (c == '%' && *(p+1) == '%')
            addchar_count = 2;
        else if (c == '%' && *(p+1) == placeholder) {
            av_bprintf(&buf, "%s", datastring);
            p += 2;
            addchar_count = 0;
            found_count ++;
        } else
            addchar_count = 1;

        if (addchar_count > 0) {
            av_bprint_append_data(&buf, p, addchar_count);
            p += addchar_count;
        }
    }
    if (!av_bprint_is_complete(&buf)) {
        av_bprint_finalize(&buf, ((void*)0));
        return -1;
    }
    if (av_bprint_finalize(&buf, &new_filename) < 0 || !new_filename)
        return -1;
    *s = new_filename;
    return found_count;
}
