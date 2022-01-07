
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int ftp_send_command (int *,char const*,int const*,int *) ;

__attribute__((used)) static int ftp_type(FTPContext *s)
{
    static const char *command = "TYPE I\r\n";
    static const int type_codes[] = {200, 0};

    if (ftp_send_command(s, command, type_codes, ((void*)0)) != 200)
        return AVERROR(EIO);

    return 0;
}
