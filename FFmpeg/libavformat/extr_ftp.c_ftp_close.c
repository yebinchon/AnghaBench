
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int features; int path; int hostname; int password; int user; } ;
typedef TYPE_2__ FTPContext ;


 int av_freep (int *) ;
 int ff_dlog (TYPE_1__*,char*) ;
 int ftp_close_both_connections (TYPE_2__*) ;

__attribute__((used)) static int ftp_close(URLContext *h)
{
    FTPContext *s = h->priv_data;

    ff_dlog(h, "ftp protocol close\n");

    ftp_close_both_connections(s);
    av_freep(&s->user);
    av_freep(&s->password);
    av_freep(&s->hostname);
    av_freep(&s->path);
    av_freep(&s->features);

    return 0;
}
