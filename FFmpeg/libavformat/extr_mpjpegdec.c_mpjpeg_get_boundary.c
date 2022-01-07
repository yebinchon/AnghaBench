
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int AVIOContext ;


 int AV_OPT_SEARCH_CHILDREN ;
 int av_freep (char**) ;
 scalar_t__ av_isspace (char const) ;
 int av_opt_get (int *,char*,int ,char**) ;
 scalar_t__ av_stristart (char const*,char*,char const**) ;
 char* av_strndup (char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static char* mpjpeg_get_boundary(AVIOContext* pb)
{
    uint8_t *mime_type = ((void*)0);
    const char *start;
    const char *end;
    uint8_t *res = ((void*)0);
    int len;


    av_opt_get(pb, "mime_type", AV_OPT_SEARCH_CHILDREN, &mime_type);
    start = mime_type;
    while (start != ((void*)0) && *start != '\0') {
        start = strchr(start, ';');
        if (!start)
            break;

        start = start+1;

        while (av_isspace(*start))
            start++;

        if (av_stristart(start, "boundary=", &start)) {
            end = strchr(start, ';');
            if (end)
                len = end - start - 1;
            else
                len = strlen(start);



            if ( len>2 && *start == '"' && start[len-1] == '"' ) {
                start++;
                len -= 2;
            }
            res = av_strndup(start, len);
            break;
        }
    }

    av_freep(&mime_type);
    return res;
}
