
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int server_data_port; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int atoi (char*) ;
 int av_free (char*) ;
 char* av_strtok (char*,char*,char**) ;
 int ff_dlog (TYPE_1__*,char*,int) ;
 int ftp_send_command (TYPE_1__*,char const*,int const*,char**) ;

__attribute__((used)) static int ftp_passive_mode(FTPContext *s)
{
    char *res = ((void*)0), *start = ((void*)0), *end = ((void*)0);
    int i;
    static const char *command = "PASV\r\n";
    static const int pasv_codes[] = {227, 0};

    if (ftp_send_command(s, command, pasv_codes, &res) != 227 || !res)
        goto fail;

    for (i = 0; res[i]; ++i) {
        if (res[i] == '(') {
            start = res + i + 1;
        } else if (res[i] == ')') {
            end = res + i;
            break;
        }
    }
    if (!start || !end)
        goto fail;

    *end = '\0';

    if (!av_strtok(start, ",", &end)) goto fail;
    if (!av_strtok(end, ",", &end)) goto fail;
    if (!av_strtok(end, ",", &end)) goto fail;
    if (!av_strtok(end, ",", &end)) goto fail;


    start = av_strtok(end, ",", &end);
    if (!start) goto fail;
    s->server_data_port = atoi(start) * 256;
    start = av_strtok(end, ",", &end);
    if (!start) goto fail;
    s->server_data_port += atoi(start);
    ff_dlog(s, "Server data port: %d\n", s->server_data_port);

    av_free(res);
    return 0;

  fail:
    av_free(res);
    s->server_data_port = -1;
    return AVERROR(EIO);
}
