
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int * const,char*,...) ;
 char** hb_filter_get_tunes_short_name (int) ;
 int hb_str_vfree (char**) ;

__attribute__((used)) static void showFilterTunes(FILE* const out, int filter_id)
{
    char ** tunes = hb_filter_get_tunes_short_name(filter_id);
    int ii, count = 0;


    for (ii = 0; tunes[ii] != ((void*)0); ii++)
    {






        count++;
    }


    if (count == 0)
    {
        return;
    }
    fprintf(out, "                           Tunes:\n");
    for (ii = 0; tunes[ii] != ((void*)0); ii++)
    {






        fprintf(out, "                               %s\n", tunes[ii]);
    }

    hb_str_vfree(tunes);
}
