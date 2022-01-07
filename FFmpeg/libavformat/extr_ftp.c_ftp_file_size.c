
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int command ;
struct TYPE_4__ {char* path; int filesize; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int CONTROL_BUFFER_SIZE ;
 int EIO ;
 int av_free (char*) ;
 int ftp_send_command (TYPE_1__*,char*,int const*,char**) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 int strtoll (char*,int *,int) ;

__attribute__((used)) static int ftp_file_size(FTPContext *s)
{
    char command[CONTROL_BUFFER_SIZE];
    char *res = ((void*)0);
    static const int size_codes[] = {213, 0};

    snprintf(command, sizeof(command), "SIZE %s\r\n", s->path);
    if (ftp_send_command(s, command, size_codes, &res) == 213 && res && strlen(res) > 4) {
        s->filesize = strtoll(&res[4], ((void*)0), 10);
    } else {
        s->filesize = -1;
        av_free(res);
        return AVERROR(EIO);
    }

    av_free(res);
    return 0;
}
