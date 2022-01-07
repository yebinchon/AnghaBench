
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int command ;
struct TYPE_4__ {char* path; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int MAX_URL_SIZE ;
 int ftp_send_command (TYPE_1__*,char*,int const*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int ftp_set_dir(FTPContext *s)
{
    static const int cwd_codes[] = {250, 550, 0};
    char command[MAX_URL_SIZE];

    snprintf(command, sizeof(command), "CWD %s\r\n", s->path);
    if (ftp_send_command(s, command, cwd_codes, ((void*)0)) != 250)
        return AVERROR(EIO);
    return 0;
}
