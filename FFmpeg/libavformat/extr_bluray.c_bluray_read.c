
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int bd; } ;
typedef TYPE_2__ BlurayContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EFAULT ;
 int bd_read (int ,unsigned char*,int) ;

__attribute__((used)) static int bluray_read(URLContext *h, unsigned char *buf, int size)
{
    BlurayContext *bd = h->priv_data;
    int len;

    if (!bd || !bd->bd) {
        return AVERROR(EFAULT);
    }

    len = bd_read(bd->bd, buf, size);

    return len == 0 ? AVERROR_EOF : len;
}
