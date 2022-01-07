
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* dst; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ zoom; scalar_t__ angle; TYPE_2__ vec; } ;
struct TYPE_10__ {TYPE_3__ last; int * ref; } ;
struct TYPE_7__ {TYPE_4__* priv; } ;
typedef TYPE_4__ DeshakeContext ;
typedef TYPE_5__ AVFilterLink ;



__attribute__((used)) static int config_props(AVFilterLink *link)
{
    DeshakeContext *deshake = link->dst->priv;

    deshake->ref = ((void*)0);
    deshake->last.vec.x = 0;
    deshake->last.vec.y = 0;
    deshake->last.angle = 0;
    deshake->last.zoom = 0;

    return 0;
}
