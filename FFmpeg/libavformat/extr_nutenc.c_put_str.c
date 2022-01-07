
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_write (int *,char const*,size_t) ;
 int ff_put_v (int *,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void put_str(AVIOContext *bc, const char *string)
{
    size_t len = strlen(string);

    ff_put_v(bc, len);
    avio_write(bc, string, len);
}
