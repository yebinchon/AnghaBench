
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int body_size; int created_at; } ;
struct TYPE_8__ {char* body; TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 int job_list_reset (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int nanoseconds () ;
 int twarnx (char*) ;

Job *
allocate_job(int body_size)
{
    Job *j;

    j = malloc(sizeof(Job) + body_size);
    if (!j) {
        twarnx("OOM");
        return (Job *) 0;
    }

    memset(j, 0, sizeof(Job));
    j->r.created_at = nanoseconds();
    j->r.body_size = body_size;
    j->body = (char *)j + sizeof(Job);
    job_list_reset(j);
    return j;
}
