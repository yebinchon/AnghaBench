
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int listing_method; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int MLSD ;
 int ftp_send_command (TYPE_1__*,char const*,int const*,int *) ;

__attribute__((used)) static int ftp_list_mlsd(FTPContext *s)
{
    static const char *command = "MLSD\r\n";
    static const int mlsd_codes[] = {150, 500, 0};

    if (ftp_send_command(s, command, mlsd_codes, ((void*)0)) != 150)
        return AVERROR(ENOSYS);
    s->listing_method = MLSD;
    return 0;
}
