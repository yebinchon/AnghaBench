
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int path ;
typedef int command ;
struct TYPE_8__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {char* path; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int MAX_URL_SIZE ;
 int av_url_split (int ,int ,int ,int ,int ,int ,int ,char*,int,int ) ;
 int ftp_close (TYPE_1__*) ;
 int ftp_connect (TYPE_1__*,int ) ;
 int ftp_send_command (TYPE_2__*,char*,int const*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int ftp_move(URLContext *h_src, URLContext *h_dst)
{
    FTPContext *s = h_src->priv_data;
    char command[MAX_URL_SIZE], path[MAX_URL_SIZE];
    static const int rnfr_codes[] = {350, 421, 450, 500, 501, 502, 503, 530, 0};
    static const int rnto_codes[] = {250, 421, 500, 501, 502, 503, 530, 532, 553, 0};
    int ret;

    if ((ret = ftp_connect(h_src, h_src->filename)) < 0)
        goto cleanup;

    snprintf(command, sizeof(command), "RNFR %s\r\n", s->path);
    if (ftp_send_command(s, command, rnfr_codes, ((void*)0)) != 350) {
        ret = AVERROR(EIO);
        goto cleanup;
    }

    av_url_split(0, 0, 0, 0, 0, 0, 0,
                 path, sizeof(path),
                 h_dst->filename);
    snprintf(command, sizeof(command), "RNTO %s\r\n", path);
    if (ftp_send_command(s, command, rnto_codes, ((void*)0)) == 250)
        ret = 0;
    else
        ret = AVERROR(EIO);

cleanup:
    ftp_close(h_src);
    return ret;
}
