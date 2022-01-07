
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int INT_MAX ;
 char* av_malloc (int) ;
 int avio_get_str (int *,int,char*,int) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static char *var_read_string(AVIOContext *pb, int size)
{
    int n;
    char *str;

    if (size < 0 || size == INT_MAX)
        return ((void*)0);

    str = av_malloc(size + 1);
    if (!str)
        return ((void*)0);
    n = avio_get_str(pb, size, str, size + 1);
    if (n < size)
        avio_skip(pb, size - n);
    return str;
}
