
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ SRTContext ;



__attribute__((used)) static int libsrt_get_file_handle(URLContext *h)
{
    SRTContext *s = h->priv_data;
    return s->fd;
}
