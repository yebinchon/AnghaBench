
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int conn_control; } ;
typedef TYPE_2__ FTPContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ffurl_closep (int *) ;
 int ftp_close_both_connections (TYPE_2__*) ;
 int ftp_close_data_connection (TYPE_2__*) ;
 int ftp_connect_control_connection (TYPE_1__*) ;
 scalar_t__ ftp_send_command (TYPE_2__*,char const*,int *,int *) ;
 int ftp_status (TYPE_2__*,int *,int const*) ;

__attribute__((used)) static int ftp_abort(URLContext *h)
{
    static const char *command = "ABOR\r\n";
    int err;
    static const int abor_codes[] = {225, 226, 0};
    FTPContext *s = h->priv_data;
    if (ftp_send_command(s, command, ((void*)0), ((void*)0)) < 0) {
        ftp_close_both_connections(s);
        if ((err = ftp_connect_control_connection(h)) < 0) {
            av_log(h, AV_LOG_ERROR, "Reconnect failed.\n");
            return err;
        }
    } else {
        ftp_close_data_connection(s);
        if (ftp_status(s, ((void*)0), abor_codes) < 225) {

            ffurl_closep(&s->conn_control);
            if ((err = ftp_connect_control_connection(h)) < 0) {
                av_log(h, AV_LOG_ERROR, "Reconnect failed.\n");
                return err;
            }
        }
    }

    return 0;
}
