
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* str; } ;
typedef TYPE_1__ AVBPrint ;


 int AV_BPRINT_SIZE_AUTOMATIC ;
 int FF_ARRAY_ELEMS (char const* const*) ;
 int av_bprint_chars (TYPE_1__*,char,int) ;
 int av_bprint_init (TYPE_1__*,int ,int ) ;
 int av_bprintf (TYPE_1__*,char*,char const* const) ;

__attribute__((used)) static inline char *make_command_flags_str(AVBPrint *pbuf, int flags)
{
    static const char * const flag_strings[] = { "enter", "leave" };
    int i, is_first = 1;

    av_bprint_init(pbuf, 0, AV_BPRINT_SIZE_AUTOMATIC);
    for (i = 0; i < FF_ARRAY_ELEMS(flag_strings); i++) {
        if (flags & 1<<i) {
            if (!is_first)
                av_bprint_chars(pbuf, '+', 1);
            av_bprintf(pbuf, "%s", flag_strings[i]);
            is_first = 0;
        }
    }

    return pbuf->str;
}
