
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,char const) ;

__attribute__((used)) static void write_escape_str(AVIOContext *s, const uint8_t *str)
{
    const uint8_t *p = str;

    while (*p) {
        if (*p == '#' || *p == ';' || *p == '=' || *p == '\\' || *p == '\n')
            avio_w8(s, '\\');
        avio_w8(s, *p);
        p++;
    }
}
