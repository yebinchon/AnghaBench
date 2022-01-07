
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int hb_job_t ;
typedef int hb_handle_t ;


 int * hb_find_title_by_index (int *,int) ;
 int * hb_job_init (int *) ;

hb_job_t * hb_job_init_by_index( hb_handle_t * h, int title_index )
{
    hb_title_t * title = hb_find_title_by_index(h, title_index);
    if (title == ((void*)0))
        return ((void*)0);
    return hb_job_init(title);
}
