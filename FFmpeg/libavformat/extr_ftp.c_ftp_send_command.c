
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int conn_control; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int ff_dlog (TYPE_1__*,char*,char const*) ;
 int ffurl_write (int ,char const*,int ) ;
 int ftp_status (TYPE_1__*,char**,int const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int ftp_send_command(FTPContext *s, const char *command,
                            const int response_codes[], char **response)
{
    int err;

    ff_dlog(s, "%s", command);

    if (response)
        *response = ((void*)0);

    if (!s->conn_control)
        return AVERROR(EIO);

    if ((err = ffurl_write(s->conn_control, command, strlen(command))) < 0)
        return err;
    if (!err)
        return -1;


    if (response_codes) {
        return ftp_status(s, response, response_codes);
    }
    return 0;
}
