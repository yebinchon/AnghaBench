
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int argc_min; unsigned int argc_max; int (* func ) (int *,int *,char*,unsigned int,char**,int ) ;int tag; int name; } ;
typedef int AVFilterContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 unsigned int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int av_log (int *,int ,char*,char*,...) ;
 TYPE_1__* functions ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 (int *,int *,char*,unsigned int,char**,int ) ;

__attribute__((used)) static int eval_function(AVFilterContext *ctx, AVBPrint *bp, char *fct,
                         unsigned argc, char **argv)
{
    unsigned i;

    for (i = 0; i < FF_ARRAY_ELEMS(functions); i++) {
        if (strcmp(fct, functions[i].name))
            continue;
        if (argc < functions[i].argc_min) {
            av_log(ctx, AV_LOG_ERROR, "%%{%s} requires at least %d arguments\n",
                   fct, functions[i].argc_min);
            return AVERROR(EINVAL);
        }
        if (argc > functions[i].argc_max) {
            av_log(ctx, AV_LOG_ERROR, "%%{%s} requires at most %d arguments\n",
                   fct, functions[i].argc_max);
            return AVERROR(EINVAL);
        }
        break;
    }
    if (i >= FF_ARRAY_ELEMS(functions)) {
        av_log(ctx, AV_LOG_ERROR, "%%{%s} is not known\n", fct);
        return AVERROR(EINVAL);
    }
    return functions[i].func(ctx, bp, fct, argc, argv, functions[i].tag);
}
