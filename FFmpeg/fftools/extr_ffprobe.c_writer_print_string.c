
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct section {int unique_name; int entries_to_show; scalar_t__ show_all_entries; } ;
struct TYPE_9__ {size_t level; int * nb_item; TYPE_1__* writer; struct section** section; } ;
typedef TYPE_2__ WriterContext ;
struct TYPE_8__ {int flags; int (* print_string ) (TYPE_2__*,char const*,char const*) ;} ;


 int AV_LOG_ERROR ;
 int PRINT_STRING_OPT ;
 int PRINT_STRING_VALIDATE ;
 int WRITER_FLAG_DISPLAY_OPTIONAL_FIELDS ;
 scalar_t__ av_dict_get (int ,char const*,int *,int ) ;
 int av_free (char*) ;
 int av_log (TYPE_2__*,int ,char*,char const*,char const*,int ) ;
 int stub1 (TYPE_2__*,char*,char*) ;
 int stub2 (TYPE_2__*,char const*,char const*) ;
 int validate_string (TYPE_2__*,char**,char const*) ;

__attribute__((used)) static inline int writer_print_string(WriterContext *wctx,
                                      const char *key, const char *val, int flags)
{
    const struct section *section = wctx->section[wctx->level];
    int ret = 0;

    if ((flags & PRINT_STRING_OPT)
        && !(wctx->writer->flags & WRITER_FLAG_DISPLAY_OPTIONAL_FIELDS))
        return 0;

    if (section->show_all_entries || av_dict_get(section->entries_to_show, key, ((void*)0), 0)) {
        if (flags & PRINT_STRING_VALIDATE) {
            char *key1 = ((void*)0), *val1 = ((void*)0);
            ret = validate_string(wctx, &key1, key);
            if (ret < 0) goto end;
            ret = validate_string(wctx, &val1, val);
            if (ret < 0) goto end;
            wctx->writer->print_string(wctx, key1, val1);
        end:
            if (ret < 0) {
                av_log(wctx, AV_LOG_ERROR,
                       "Invalid key=value string combination %s=%s in section %s\n",
                       key, val, section->unique_name);
            }
            av_free(key1);
            av_free(val1);
        } else {
            wctx->writer->print_string(wctx, key, val);
        }

        wctx->nb_item[wctx->level]++;
    }

    return ret;
}
