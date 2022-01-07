
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp_hostname ;
struct TYPE_2__ {scalar_t__ host_method; char* mitm_address; int mitm_port; char* address; int port; int subsystem_name; int corename; int gamename; int gamecrc; } ;


 int CMD_EVENT_NETPLAY_DEINIT ;
 scalar_t__ NETPLAY_HOST_METHOD_MITM ;
 int RARCH_LOG (char*,char*,int ,int ) ;
 int RARCH_NETPLAY_CTL_ENABLE_CLIENT ;
 int RARCH_NETPLAY_CTL_IS_DATA_INITED ;
 int generic_action_ok_command (int ) ;
 scalar_t__ netplay_driver_ctl (int ,int *) ;
 TYPE_1__* netplay_room_list ;
 int snprintf (char*,int,char*,char*,int) ;
 int task_push_netplay_crc_scan (int ,int ,char*,int ,int ) ;

__attribute__((used)) static int action_ok_netplay_connect_room(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return -1;


   return 0;
}
