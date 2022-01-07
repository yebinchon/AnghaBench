
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int filesize; int seekable; int is_akamai; void* off; } ;
typedef TYPE_2__ HTTPContext ;


 char* strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 void* strtoull (char const*,int *,int) ;

__attribute__((used)) static void parse_content_range(URLContext *h, const char *p)
{
    HTTPContext *s = h->priv_data;
    const char *slash;

    if (!strncmp(p, "bytes ", 6)) {
        p += 6;
        s->off = strtoull(p, ((void*)0), 10);
        if ((slash = strchr(p, '/')) && strlen(slash) > 0)
            s->filesize = strtoull(slash + 1, ((void*)0), 10);
    }
    if (s->seekable == -1 && (!s->is_akamai || s->filesize != 2147483647))
        h->is_streamed = 0;
}
