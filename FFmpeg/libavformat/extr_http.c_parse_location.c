
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int redirected_location ;
struct TYPE_3__ {char* location; } ;
typedef TYPE_1__ HTTPContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int MAX_URL_SIZE ;
 int av_free (char*) ;
 char* av_strdup (char*) ;
 int ff_make_absolute_url (char*,int,char*,char const*) ;

__attribute__((used)) static int parse_location(HTTPContext *s, const char *p)
{
    char redirected_location[MAX_URL_SIZE], *new_loc;
    ff_make_absolute_url(redirected_location, sizeof(redirected_location),
                         s->location, p);
    new_loc = av_strdup(redirected_location);
    if (!new_loc)
        return AVERROR(ENOMEM);
    av_free(s->location);
    s->location = new_loc;
    return 0;
}
