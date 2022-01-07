
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fragment {int size; void* url_offset; } ;


 struct fragment* av_mallocz (int) ;
 char* av_strtok (char*,char*,char**) ;
 void* strtoll (char*,int *,int) ;

__attribute__((used)) static struct fragment * get_Fragment(char *range)
{
    struct fragment * seg = av_mallocz(sizeof(struct fragment));

    if (!seg)
        return ((void*)0);

    seg->size = -1;
    if (range) {
        char *str_end_offset;
        char *str_offset = av_strtok(range, "-", &str_end_offset);
        seg->url_offset = strtoll(str_offset, ((void*)0), 10);
        seg->size = strtoll(str_end_offset, ((void*)0), 10) - seg->url_offset;
    }

    return seg;
}
