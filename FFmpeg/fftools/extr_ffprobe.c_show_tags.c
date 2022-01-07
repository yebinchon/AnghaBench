
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int print_str_validate (int ,int ) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int) ;

__attribute__((used)) static inline int show_tags(WriterContext *w, AVDictionary *tags, int section_id)
{
    AVDictionaryEntry *tag = ((void*)0);
    int ret = 0;

    if (!tags)
        return 0;
    writer_print_section_header(w, section_id);

    while ((tag = av_dict_get(tags, "", tag, AV_DICT_IGNORE_SUFFIX))) {
        if ((ret = print_str_validate(tag->key, tag->value)) < 0)
            break;
    }
    writer_print_section_footer(w);

    return ret;
}
