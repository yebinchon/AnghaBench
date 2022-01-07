
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerNode ;


 int NodeIsCoordinator (int *) ;
 scalar_t__ NodeIsReadable (int *) ;

__attribute__((used)) static bool
NodeIsReadableWorker(WorkerNode *node)
{
 return !NodeIsCoordinator(node) && NodeIsReadable(node);
}
