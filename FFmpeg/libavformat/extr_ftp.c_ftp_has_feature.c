
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int features; } ;
typedef TYPE_1__ FTPContext ;


 int * av_stristr (int ,char const*) ;

__attribute__((used)) static int ftp_has_feature(FTPContext *s, const char *feature_name)
{
    if (!s->features)
        return 0;

    return av_stristr(s->features, feature_name) != ((void*)0);
}
