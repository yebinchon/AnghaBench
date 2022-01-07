
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int c; int data; } ;
typedef TYPE_1__ Libdav1dContext ;
typedef TYPE_2__ AVCodecContext ;


 int dav1d_data_unref (int *) ;
 int dav1d_flush (int ) ;

__attribute__((used)) static void libdav1d_flush(AVCodecContext *c)
{
    Libdav1dContext *dav1d = c->priv_data;

    dav1d_data_unref(&dav1d->data);
    dav1d_flush(dav1d->c);
}
