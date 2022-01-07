
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int command ;
struct TYPE_7__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {char* path; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int MAX_URL_SIZE ;
 int ftp_close (TYPE_1__*) ;
 int ftp_connect (TYPE_1__*,int ) ;
 int ftp_send_command (TYPE_2__*,char*,int const*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int ftp_delete(URLContext *h)
{
    FTPContext *s = h->priv_data;
    char command[MAX_URL_SIZE];
    static const int del_codes[] = {250, 421, 450, 500, 501, 502, 530, 550, 0};
    static const int rmd_codes[] = {250, 421, 500, 501, 502, 530, 550, 0};
    int ret;

    if ((ret = ftp_connect(h, h->filename)) < 0)
        goto cleanup;

    snprintf(command, sizeof(command), "DELE %s\r\n", s->path);
    if (ftp_send_command(s, command, del_codes, ((void*)0)) == 250) {
        ret = 0;
        goto cleanup;
    }

    snprintf(command, sizeof(command), "RMD %s\r\n", s->path);
    if (ftp_send_command(s, command, rmd_codes, ((void*)0)) == 250)
        ret = 0;
    else
        ret = AVERROR(EIO);

cleanup:
    ftp_close(h);
    return ret;
}
