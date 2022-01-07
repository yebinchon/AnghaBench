
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int job ;


 int clusterBroadcastDelJob (int *) ;
 int freeJob (int *) ;
 int unregisterJob (int *) ;

void deleteJobFromCluster(job *j) {
    clusterBroadcastDelJob(j);
    unregisterJob(j);
    freeJob(j);
}
