
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int V4L2Context ;
struct TYPE_2__ {int * priv; } ;
typedef int AVClass ;


 TYPE_1__* ctx_to_m2mctx (int *) ;

__attribute__((used)) static inline AVClass *logger(V4L2Context *ctx)
{
    return ctx_to_m2mctx(ctx)->priv;
}
