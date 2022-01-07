
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int av_free (char*) ;
 int strtol (char*,int *,int) ;
 char* var_read_string (int *,int) ;

__attribute__((used)) static int var_read_int(AVIOContext *pb, int size)
{
    int v;
    char *s = var_read_string(pb, size);
    if (!s)
        return 0;
    v = strtol(s, ((void*)0), 10);
    av_free(s);
    return v;
}
