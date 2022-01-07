
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_FATAL ;
 TYPE_1__* av_dict_get (int *,char*,int *,int ) ;
 int av_log (int *,int ,char*,int ) ;
 int exit_program (int) ;

void assert_avoptions(AVDictionary *m)
{
    AVDictionaryEntry *t;
    if ((t = av_dict_get(m, "", ((void*)0), AV_DICT_IGNORE_SUFFIX))) {
        av_log(((void*)0), AV_LOG_FATAL, "Option %s not found.\n", t->key);
        exit_program(1);
    }
}
