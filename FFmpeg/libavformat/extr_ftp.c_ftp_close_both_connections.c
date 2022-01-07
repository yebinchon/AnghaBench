
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn_control; } ;
typedef TYPE_1__ FTPContext ;


 int ffurl_closep (int *) ;
 int ftp_close_data_connection (TYPE_1__*) ;

__attribute__((used)) static void ftp_close_both_connections(FTPContext *s)
{
    ffurl_closep(&s->conn_control);
    ftp_close_data_connection(s);
}
