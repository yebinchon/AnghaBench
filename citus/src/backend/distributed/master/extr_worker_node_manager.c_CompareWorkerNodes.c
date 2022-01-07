
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int WorkerNodeCompare (void const*,void const*,int ) ;

int
CompareWorkerNodes(const void *leftElement, const void *rightElement)
{
 const void *leftWorker = *((const void **) leftElement);
 const void *rightWorker = *((const void **) rightElement);
 int compare = 0;
 Size ignoredKeySize = 0;

 compare = WorkerNodeCompare(leftWorker, rightWorker, ignoredKeySize);

 return compare;
}
