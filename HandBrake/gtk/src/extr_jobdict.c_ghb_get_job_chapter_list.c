
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_array_new () ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_dest_settings (int *) ;

GhbValue* ghb_get_job_chapter_list(GhbValue *settings)
{
    GhbValue *dest = ghb_get_job_dest_settings(settings);
    GhbValue *chapters = ghb_dict_get(dest, "ChapterList");
    if (chapters == ((void*)0))
    {
        chapters = ghb_array_new();
        ghb_dict_set(dest, "ChapterList", chapters);
    }
    return chapters;
}
