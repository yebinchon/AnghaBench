
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int buf ;
struct TYPE_8__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int rw_timeout; int state; scalar_t__ position; int conn_data; int server_data_port; int hostname; } ;
typedef TYPE_2__ FTPContext ;
typedef int AVDictionary ;


 int CONTROL_BUFFER_SIZE ;
 int READY ;
 int av_dict_free (int **) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 int ff_url_join (char*,int,char*,int *,int ,int ,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,TYPE_1__*) ;
 int ftp_passive_mode (TYPE_2__*) ;
 scalar_t__ ftp_passive_mode_epsv (TYPE_2__*) ;
 int ftp_restart (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int ftp_connect_data_connection(URLContext *h)
{
    int err;
    char buf[CONTROL_BUFFER_SIZE];
    AVDictionary *opts = ((void*)0);
    FTPContext *s = h->priv_data;

    if (!s->conn_data) {

        if (ftp_passive_mode_epsv(s) < 0) {

            if ((err = ftp_passive_mode(s)) < 0)
                return err;
        }

        ff_url_join(buf, sizeof(buf), "tcp", ((void*)0), s->hostname, s->server_data_port, ((void*)0));
        if (s->rw_timeout != -1) {
            av_dict_set_int(&opts, "timeout", s->rw_timeout, 0);
        }
        err = ffurl_open_whitelist(&s->conn_data, buf, h->flags,
                                   &h->interrupt_callback, &opts,
                                   h->protocol_whitelist, h->protocol_blacklist, h);
        av_dict_free(&opts);
        if (err < 0)
            return err;

        if (s->position)
            if ((err = ftp_restart(s, s->position)) < 0)
                return err;
    }
    s->state = READY;
    return 0;
}
