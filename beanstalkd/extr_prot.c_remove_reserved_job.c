
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;
typedef int Conn ;


 int is_job_reserved_by_conn (int *,int *) ;
 int * remove_this_reserved_job (int *,int *) ;

__attribute__((used)) static Job *
remove_reserved_job(Conn *c, Job *j)
{
    if (!is_job_reserved_by_conn(c, j))
        return ((void*)0);
    return remove_this_reserved_job(c, j);
}
