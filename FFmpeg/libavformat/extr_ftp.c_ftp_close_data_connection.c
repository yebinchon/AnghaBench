
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; scalar_t__ position; int conn_data; } ;
typedef TYPE_1__ FTPContext ;


 int DISCONNECTED ;
 int ffurl_closep (int *) ;

__attribute__((used)) static void ftp_close_data_connection(FTPContext *s)
{
    ffurl_closep(&s->conn_data);
    s->position = 0;
    s->state = DISCONNECTED;
}
