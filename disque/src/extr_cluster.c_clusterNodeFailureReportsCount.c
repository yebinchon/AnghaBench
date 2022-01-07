
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fail_reports; } ;
typedef TYPE_1__ clusterNode ;


 int clusterNodeCleanupFailureReports (TYPE_1__*) ;
 int listLength (int ) ;

int clusterNodeFailureReportsCount(clusterNode *node) {
    clusterNodeCleanupFailureReports(node);
    return listLength(node->fail_reports);
}
