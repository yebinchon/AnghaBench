
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int avio_w8 (int *,char) ;
 int write_escape_str (int *,int ) ;

__attribute__((used)) static void write_tags(AVIOContext *s, AVDictionary *m)
{
    AVDictionaryEntry *t = ((void*)0);
    while ((t = av_dict_get(m, "", t, AV_DICT_IGNORE_SUFFIX))) {
        write_escape_str(s, t->key);
        avio_w8(s, '=');
        write_escape_str(s, t->value);
        avio_w8(s, '\n');
    }
}
