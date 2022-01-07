
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int signal_user_data_t ;
typedef int gchar ;
struct TYPE_2__ {int preset; int filter_id; } ;
typedef TYPE_1__ filter_opts_t ;


 int filter_opts_set2 (int *,int const*,int ,int ) ;

__attribute__((used)) static void
filter_opts_set(signal_user_data_t *ud, const gchar *name,
                void *vopts, const void* data)
{
    filter_opts_t *opts = (filter_opts_t*)vopts;

    (void)data;
    filter_opts_set2(ud, name, opts->filter_id, opts->preset);
}
