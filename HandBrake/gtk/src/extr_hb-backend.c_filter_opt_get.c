
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preset; int filter_id; } ;
typedef TYPE_1__ filter_opts_t ;
typedef int GhbValue ;
typedef int GhbType ;


 int * filter_opt_get2 (char const*,int const*,int ,int ,int ) ;

__attribute__((used)) static GhbValue *
filter_opt_get(const char *name, const void *vopts,
               const GhbValue *gval, GhbType type)
{
    filter_opts_t *opts = (filter_opts_t*)vopts;
    return filter_opt_get2(name, gval, type, opts->filter_id, opts->preset);
}
