
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int props ;
struct TYPE_3__ {scalar_t__ user_data; int priority; } ;
typedef TYPE_1__ memorystatus_priority_properties_t ;


 int JETSAM_PRIORITY_IDLE ;
 int MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES ;
 int MEMSTAT_PRIORITY_CHANGE_FAILED ;
 int exit (int ) ;
 int getpid () ;
 scalar_t__ memorystatus_control (int ,int ,int ,TYPE_1__*,int) ;

void move_to_idle_band(void) {

 memorystatus_priority_properties_t props;




 props.priority = JETSAM_PRIORITY_IDLE;
 props.user_data = 0;





 if (memorystatus_control(MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES, getpid(), 0, &props, sizeof(props))) {
  exit(MEMSTAT_PRIORITY_CHANGE_FAILED);
 }
}
