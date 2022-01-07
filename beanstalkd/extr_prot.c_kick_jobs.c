
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int Tube ;
typedef int Server ;


 scalar_t__ buried_job_p (int *) ;
 int kick_buried_jobs (int *,int *,int ) ;
 int kick_delayed_jobs (int *,int *,int ) ;

__attribute__((used)) static uint
kick_jobs(Server *s, Tube *t, uint n)
{
    if (buried_job_p(t))
        return kick_buried_jobs(s, t, n);
    return kick_delayed_jobs(s, t, n);
}
