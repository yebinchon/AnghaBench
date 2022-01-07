
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {scalar_t__ bd; } ;
typedef TYPE_2__ BlurayContext ;


 int bd_close (scalar_t__) ;

__attribute__((used)) static int bluray_close(URLContext *h)
{
    BlurayContext *bd = h->priv_data;
    if (bd->bd) {
        bd_close(bd->bd);
    }

    return 0;
}
