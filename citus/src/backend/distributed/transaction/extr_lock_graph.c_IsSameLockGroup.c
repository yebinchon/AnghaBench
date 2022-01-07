
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lockGroupLeader; } ;
typedef TYPE_1__ PGPROC ;



__attribute__((used)) static bool
IsSameLockGroup(PGPROC *leftProc, PGPROC *rightProc)
{
 return leftProc == rightProc ||
     (leftProc->lockGroupLeader != ((void*)0) &&
   leftProc->lockGroupLeader == rightProc->lockGroupLeader);
}
