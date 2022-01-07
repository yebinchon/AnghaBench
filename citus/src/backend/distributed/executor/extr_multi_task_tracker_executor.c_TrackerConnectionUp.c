
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ trackerStatus; int connectionId; } ;
typedef TYPE_1__ TaskTracker ;


 int MultiClientConnectionUp (int ) ;
 scalar_t__ TRACKER_CONNECTED ;

__attribute__((used)) static bool
TrackerConnectionUp(TaskTracker *taskTracker)
{
 bool connectionUp = 0;


 if (taskTracker->trackerStatus == TRACKER_CONNECTED)
 {
  connectionUp = MultiClientConnectionUp(taskTracker->connectionId);
 }

 return connectionUp;
}
