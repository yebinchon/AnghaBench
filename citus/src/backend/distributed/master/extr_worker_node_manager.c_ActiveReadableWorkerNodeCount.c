
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int List ;


 int * ActiveReadableWorkerNodeList () ;
 int list_length (int *) ;

uint32
ActiveReadableWorkerNodeCount(void)
{
 List *workerNodeList = ActiveReadableWorkerNodeList();
 uint32 liveWorkerCount = list_length(workerNodeList);

 return liveWorkerCount;
}
