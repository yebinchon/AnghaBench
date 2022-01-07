
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_LOG_FILE_DEINIT ;
 int command_event (int ,int *) ;
 int ps4LinkFinish () ;
 int verbosity_disable () ;

__attribute__((used)) static void frontend_orbis_deinit(void *data)
{
   (void)data;

   verbosity_disable();





 ps4LinkFinish();
}
