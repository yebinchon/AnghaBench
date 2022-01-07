
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int dl_handle; } ;
typedef TYPE_1__ Frei0rContext ;
typedef TYPE_2__ AVFilterContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*,char const*) ;
 void* dlsym (int ,char const*) ;

__attribute__((used)) static void *load_sym(AVFilterContext *ctx, const char *sym_name)
{
    Frei0rContext *s = ctx->priv;
    void *sym = dlsym(s->dl_handle, sym_name);
    if (!sym)
        av_log(ctx, AV_LOG_ERROR, "Could not find symbol '%s' in loaded module.\n", sym_name);
    return sym;
}
