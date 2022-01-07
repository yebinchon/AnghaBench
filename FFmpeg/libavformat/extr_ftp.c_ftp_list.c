
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
typedef TYPE_1__ FTPContext ;


 int LISTING_DIR ;
 int ftp_list_mlsd (TYPE_1__*) ;
 int ftp_list_nlst (TYPE_1__*) ;

__attribute__((used)) static int ftp_list(FTPContext *s)
{
    int ret;
    s->state = LISTING_DIR;

    if ((ret = ftp_list_mlsd(s)) < 0)
        ret = ftp_list_nlst(s);

    return ret;
}
