
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ BETWEEN (int,char,char) ;
 int next_byte (int *,int*) ;
 int skip_spaces (int *,int*) ;

__attribute__((used)) static int parse_boolean(AVIOContext *pb, int *cur_byte, int *result)
{
    static const char * const text[] = { "false", "true" };
    const char *p;
    int i;

    skip_spaces(pb, cur_byte);
    for (i = 0; i < 2; i++) {
        p = text[i];
        if (*cur_byte != *p)
            continue;
        for (; *p; p++, next_byte(pb, cur_byte))
            if (*cur_byte != *p)
                return AVERROR_INVALIDDATA;
        if (BETWEEN(*cur_byte | 32, 'a', 'z'))
            return AVERROR_INVALIDDATA;
        *result = i;
        return 0;
    }
    return AVERROR_INVALIDDATA;
}
