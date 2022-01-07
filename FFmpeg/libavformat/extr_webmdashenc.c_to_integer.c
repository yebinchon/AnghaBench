
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int ENOMEM ;
 int atoi (char*) ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 int av_strlcpy (char*,char*,int) ;

__attribute__((used)) static int to_integer(char *p, int len)
{
    int ret;
    char *q = av_malloc(sizeof(char) * len);
    if (!q)
        return AVERROR(ENOMEM);
    av_strlcpy(q, p, len);
    ret = atoi(q);
    av_free(q);
    return ret;
}
