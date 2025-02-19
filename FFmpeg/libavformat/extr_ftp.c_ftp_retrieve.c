
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int command ;
struct TYPE_4__ {char* path; int state; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int CONTROL_BUFFER_SIZE ;
 int DOWNLOADING ;
 int EIO ;
 int ftp_send_command (TYPE_1__*,char*,int const*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int ftp_retrieve(FTPContext *s)
{
    char command[CONTROL_BUFFER_SIZE];
    static const int retr_codes[] = {150, 125, 0};
    int resp_code;

    snprintf(command, sizeof(command), "RETR %s\r\n", s->path);
    resp_code = ftp_send_command(s, command, retr_codes, ((void*)0));
    if (resp_code != 125 && resp_code != 150)
        return AVERROR(EIO);

    s->state = DOWNLOADING;

    return 0;
}
