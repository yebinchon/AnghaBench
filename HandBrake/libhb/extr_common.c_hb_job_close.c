
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_job_t ;


 int free (int *) ;
 int job_clean (int *) ;

void hb_job_close( hb_job_t ** _j )
{
    if (_j && *_j)
    {
        job_clean(*_j);
        free( *_j );
        _j = ((void*)0);
    }
}
