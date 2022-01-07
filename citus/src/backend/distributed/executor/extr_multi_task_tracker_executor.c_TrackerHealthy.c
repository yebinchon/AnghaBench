
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ trackerFailureCount; scalar_t__ connectionFailureCount; } ;
typedef TYPE_1__ TaskTracker ;


 scalar_t__ MAX_TRACKER_FAILURE_COUNT ;

__attribute__((used)) static bool
TrackerHealthy(TaskTracker *taskTracker)
{
 bool trackerHealthy = 0;

 if (taskTracker->trackerFailureCount < MAX_TRACKER_FAILURE_COUNT &&
  taskTracker->connectionFailureCount < MAX_TRACKER_FAILURE_COUNT)
 {
  trackerHealthy = 1;
 }

 return trackerHealthy;
}
