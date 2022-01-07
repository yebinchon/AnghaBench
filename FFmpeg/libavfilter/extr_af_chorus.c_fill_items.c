
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_strtok (char*,char*,char**) ;
 int sscanf (char*,char*,float*) ;

__attribute__((used)) static void fill_items(char *item_str, int *nb_items, float *items)
{
    char *p, *saveptr = ((void*)0);
    int i, new_nb_items = 0;

    p = item_str;
    for (i = 0; i < *nb_items; i++) {
        char *tstr = av_strtok(p, "|", &saveptr);
        p = ((void*)0);
        if (tstr)
            new_nb_items += sscanf(tstr, "%f", &items[new_nb_items]) == 1;
    }

    *nb_items = new_nb_items;
}
