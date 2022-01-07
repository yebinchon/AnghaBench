
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int date ;
struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int av_dict_set (int **,char*,char*,int ) ;
 int av_strlcpy (char*,char*,int) ;
 TYPE_1__* get_date_tag (int *,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void merge_date(AVDictionary **m)
{
    AVDictionaryEntry *t;
    char date[17] = { 0 };

    if (!(t = get_date_tag(*m, "TYER")) &&
        !(t = get_date_tag(*m, "TYE")))
        return;
    av_strlcpy(date, t->value, 5);
    av_dict_set(m, "TYER", ((void*)0), 0);
    av_dict_set(m, "TYE", ((void*)0), 0);

    if (!(t = get_date_tag(*m, "TDAT")) &&
        !(t = get_date_tag(*m, "TDA")))
        goto finish;
    snprintf(date + 4, sizeof(date) - 4, "-%.2s-%.2s", t->value + 2, t->value);
    av_dict_set(m, "TDAT", ((void*)0), 0);
    av_dict_set(m, "TDA", ((void*)0), 0);

    if (!(t = get_date_tag(*m, "TIME")) &&
        !(t = get_date_tag(*m, "TIM")))
        goto finish;
    snprintf(date + 10, sizeof(date) - 10,
             " %.2s:%.2s", t->value, t->value + 2);
    av_dict_set(m, "TIME", ((void*)0), 0);
    av_dict_set(m, "TIM", ((void*)0), 0);

finish:
    if (date[0])
        av_dict_set(m, "date", date, 0);
}
