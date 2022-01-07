
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_str ;
struct segment {int size; void* url_offset; int url; } ;
struct playlist {int n_init_sections; int init_sections; } ;
struct init_section_info {char* byterange; int * uri; } ;


 int MAX_URL_SIZE ;
 int av_free (struct segment*) ;
 struct segment* av_mallocz (int) ;
 int av_strdup (char*) ;
 int dynarray_add (int *,int *,struct segment*) ;
 int ff_make_absolute_url (char*,int,char const*,int *) ;
 char* strchr (char*,char) ;
 void* strtoll (char*,int *,int) ;

__attribute__((used)) static struct segment *new_init_section(struct playlist *pls,
                                        struct init_section_info *info,
                                        const char *url_base)
{
    struct segment *sec;
    char *ptr;
    char tmp_str[MAX_URL_SIZE];

    if (!info->uri[0])
        return ((void*)0);

    sec = av_mallocz(sizeof(*sec));
    if (!sec)
        return ((void*)0);

    ff_make_absolute_url(tmp_str, sizeof(tmp_str), url_base, info->uri);
    sec->url = av_strdup(tmp_str);
    if (!sec->url) {
        av_free(sec);
        return ((void*)0);
    }

    if (info->byterange[0]) {
        sec->size = strtoll(info->byterange, ((void*)0), 10);
        ptr = strchr(info->byterange, '@');
        if (ptr)
            sec->url_offset = strtoll(ptr+1, ((void*)0), 10);
    } else {

        sec->size = -1;
    }

    dynarray_add(&pls->init_sections, &pls->n_init_sections, sec);

    return sec;
}
