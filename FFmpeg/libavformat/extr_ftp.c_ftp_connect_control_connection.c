
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int buf ;
struct TYPE_10__ {int flags; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int rw_timeout; int conn_control; int server_control_port; int hostname; } ;
typedef TYPE_2__ FTPContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ_WRITE ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int CONTROL_BUFFER_SIZE ;
 int EACCES ;
 int av_dict_free (int **) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 int av_free (char*) ;
 int av_log (TYPE_1__*,int ,char*) ;
 scalar_t__ av_stristr (char*,char*) ;
 int ff_url_join (char*,int,char*,int *,int ,int ,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,TYPE_1__*) ;
 int ftp_auth (TYPE_2__*) ;
 int ftp_features (TYPE_2__*) ;
 int ftp_status (TYPE_2__*,char**,int const*) ;
 int ftp_type (TYPE_2__*) ;

__attribute__((used)) static int ftp_connect_control_connection(URLContext *h)
{
    char buf[CONTROL_BUFFER_SIZE], *response = ((void*)0);
    int err;
    AVDictionary *opts = ((void*)0);
    FTPContext *s = h->priv_data;
    static const int connect_codes[] = {220, 0};

    if (!s->conn_control) {
        ff_url_join(buf, sizeof(buf), "tcp", ((void*)0),
                    s->hostname, s->server_control_port, ((void*)0));
        if (s->rw_timeout != -1) {
            av_dict_set_int(&opts, "timeout", s->rw_timeout, 0);
        }
        err = ffurl_open_whitelist(&s->conn_control, buf, AVIO_FLAG_READ_WRITE,
                                   &h->interrupt_callback, &opts,
                                   h->protocol_whitelist, h->protocol_blacklist, h);
        av_dict_free(&opts);
        if (err < 0) {
            av_log(h, AV_LOG_ERROR, "Cannot open control connection\n");
            return err;
        }


        if (ftp_status(s, ((h->flags & AVIO_FLAG_WRITE) ? &response : ((void*)0)), connect_codes) != 220) {
            av_log(h, AV_LOG_ERROR, "FTP server not ready for new users\n");
            return AVERROR(EACCES);
        }

        if ((h->flags & AVIO_FLAG_WRITE) && av_stristr(response, "pure-ftpd")) {
            av_log(h, AV_LOG_WARNING, "Pure-FTPd server is used as an output protocol. It is known issue this implementation may produce incorrect content and it cannot be fixed at this moment.");
        }
        av_free(response);

        if ((err = ftp_auth(s)) < 0) {
            av_log(h, AV_LOG_ERROR, "FTP authentication failed\n");
            return err;
        }

        if ((err = ftp_type(s)) < 0) {
            av_log(h, AV_LOG_ERROR, "Set content type failed\n");
            return err;
        }

        ftp_features(s);
    }
    return 0;
}
