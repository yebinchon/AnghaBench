
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct section {int entries_to_show; scalar_t__ show_all_entries; } ;
struct TYPE_6__ {size_t level; int * nb_item; TYPE_1__* writer; struct section** section; } ;
typedef TYPE_2__ WriterContext ;
struct TYPE_5__ {int (* print_integer ) (TYPE_2__*,char const*,long long) ;} ;


 scalar_t__ av_dict_get (int ,char const*,int *,int ) ;
 int stub1 (TYPE_2__*,char const*,long long) ;

__attribute__((used)) static inline void writer_print_integer(WriterContext *wctx,
                                        const char *key, long long int val)
{
    const struct section *section = wctx->section[wctx->level];

    if (section->show_all_entries || av_dict_get(section->entries_to_show, key, ((void*)0), 0)) {
        wctx->writer->print_integer(wctx, key, val);
        wctx->nb_item[wctx->level]++;
    }
}
