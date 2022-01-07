
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_w8 (int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void put_str8(AVIOContext *s, const char *tag)
{
    avio_w8(s, strlen(tag));
    while (*tag) {
        avio_w8(s, *tag++);
    }
}
