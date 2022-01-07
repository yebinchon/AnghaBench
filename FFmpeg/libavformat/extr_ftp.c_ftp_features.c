
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int utf8; int features; } ;
typedef TYPE_1__ FTPContext ;


 int av_freep (int *) ;
 scalar_t__ ftp_has_feature (TYPE_1__*,char*) ;
 int ftp_send_command (TYPE_1__*,char const*,int const*,int *) ;

__attribute__((used)) static int ftp_features(FTPContext *s)
{
    static const char *feat_command = "FEAT\r\n";
    static const char *enable_utf8_command = "OPTS UTF8 ON\r\n";
    static const int feat_codes[] = {211, 0};
    static const int opts_codes[] = {200, 202, 451, 0};

    av_freep(&s->features);
    if (ftp_send_command(s, feat_command, feat_codes, &s->features) != 211) {
        av_freep(&s->features);
    }

    if (ftp_has_feature(s, "UTF8")) {
        int ret = ftp_send_command(s, enable_utf8_command, opts_codes, ((void*)0));
        if (ret == 200 || ret == 202)
            s->utf8 = 1;
    }

    return 0;
}
