
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int assignedAt; } ;
typedef TYPE_1__ WorkerTask ;



__attribute__((used)) static int
CompareTasksByTime(const void *first, const void *second)
{
 WorkerTask *firstTask = (WorkerTask *) first;
 WorkerTask *secondTask = (WorkerTask *) second;


 int timeDiff = firstTask->assignedAt - secondTask->assignedAt;
 return timeDiff;
}
