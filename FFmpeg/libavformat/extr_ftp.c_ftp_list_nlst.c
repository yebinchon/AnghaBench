
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int listing_method; } ;
typedef TYPE_1__ FTPContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int NLST ;
 int ftp_send_command (TYPE_1__*,char const*,int const*,int *) ;

__attribute__((used)) static int ftp_list_nlst(FTPContext *s)
{
    static const char *command = "NLST\r\n";
    static const int nlst_codes[] = {226, 425, 426, 451, 450, 550, 0};

    if (ftp_send_command(s, command, nlst_codes, ((void*)0)) != 226)
        return AVERROR(ENOSYS);
    s->listing_method = NLST;
    return 0;
}
