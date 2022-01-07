
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_write (int *,unsigned char const*,int ) ;
 int strlen (char const*) ;

void avio_print_string_array(AVIOContext *s, const char *strings[])
{
    for(; *strings; strings++)
        avio_write(s, (const unsigned char *)*strings, strlen(*strings));
}
