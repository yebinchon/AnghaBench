
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int path_src ;
typedef int path_dst ;
typedef int hostname_src ;
typedef int hostname_dst ;
typedef int credentials_src ;
typedef int credentials_dst ;
struct TYPE_7__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int sftp; } ;
typedef TYPE_2__ LIBSSHContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int MAX_URL_SIZE ;
 int av_url_split (int *,int ,char*,int,char*,int,int*,char*,int,int ) ;
 int libssh_close (TYPE_1__*) ;
 int libssh_connect (TYPE_1__*,int ,char*,int) ;
 int sftp_get_error (int ) ;
 scalar_t__ sftp_rename (int ,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int libssh_move(URLContext *h_src, URLContext *h_dst)
{
    int ret;
    LIBSSHContext *libssh = h_src->priv_data;
    char path_src[MAX_URL_SIZE], path_dst[MAX_URL_SIZE];
    char hostname_src[1024], hostname_dst[1024];
    char credentials_src[1024], credentials_dst[1024];
    int port_src = 22, port_dst = 22;

    av_url_split(((void*)0), 0,
                 credentials_src, sizeof(credentials_src),
                 hostname_src, sizeof(hostname_src),
                 &port_src,
                 path_src, sizeof(path_src),
                 h_src->filename);

    av_url_split(((void*)0), 0,
                 credentials_dst, sizeof(credentials_dst),
                 hostname_dst, sizeof(hostname_dst),
                 &port_dst,
                 path_dst, sizeof(path_dst),
                 h_dst->filename);

    if (strcmp(credentials_src, credentials_dst) ||
            strcmp(hostname_src, hostname_dst) ||
            port_src != port_dst) {
        return AVERROR(EINVAL);
    }

    if ((ret = libssh_connect(h_src, h_src->filename, path_src, sizeof(path_src))) < 0)
        goto cleanup;

    if (sftp_rename(libssh->sftp, path_src, path_dst) < 0) {
        ret = AVERROR(sftp_get_error(libssh->sftp));
        goto cleanup;
    }

    ret = 0;

cleanup:
    libssh_close(h_src);
    return ret;
}
