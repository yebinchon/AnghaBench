
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Wal ;
struct TYPE_6__ {scalar_t__ body_size; } ;
struct TYPE_7__ {TYPE_2__ r; TYPE_1__* tube; } ;
struct TYPE_5__ {int name; } ;
typedef int Jobrec ;
typedef TYPE_3__ Job ;


 int reserve (int *,int) ;
 scalar_t__ strlen (int ) ;

int
walresvput(Wal *w, Job *j)
{
    int z = 0;


    z += sizeof(int);
    z += strlen(j->tube->name);
    z += sizeof(Jobrec);
    z += j->r.body_size;


    z += sizeof(int);
    z += sizeof(Jobrec);

    return reserve(w, z);
}
