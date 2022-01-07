
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int ENOMEM ;
 int av_free (char*) ;
 int av_strdup (char*) ;
 int ftp_send_command (TYPE_1__*,char const*,int const*,char**) ;

__attribute__((used)) static int ftp_current_dir(FTPContext *s)
{
    char *res = ((void*)0), *start = ((void*)0), *end = ((void*)0);
    int i;
    static const char *command = "PWD\r\n";
    static const int pwd_codes[] = {257, 0};

    if (ftp_send_command(s, command, pwd_codes, &res) != 257 || !res)
        goto fail;

    for (i = 0; res[i]; ++i) {
        if (res[i] == '"') {
            if (!start) {
                start = res + i + 1;
                continue;
            }
            end = res + i;
            break;
        }
    }

    if (!end)
        goto fail;

    *end = '\0';
    s->path = av_strdup(start);

    av_free(res);

    if (!s->path)
        return AVERROR(ENOMEM);
    return 0;

  fail:
    av_free(res);
    return AVERROR(EIO);
}
