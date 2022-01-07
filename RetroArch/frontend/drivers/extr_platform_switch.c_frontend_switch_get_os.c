
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int result_t ;
typedef int ipc_request_t ;
typedef int ipc_object_t ;
typedef int ipc_buffer_t ;


 int HOSVER_MAJOR (int ) ;
 int HOSVER_MINOR (int ) ;
 int LIB_ASSERT_OK (int ,int ) ;
 int buffer_ptrs ;
 int fail ;
 int fail_object ;
 int fail_sm ;
 int hosversionGet () ;
 int ipc_close (int ) ;
 int ipc_default_response_fmt ;
 int ipc_make_buffer (char*,int,int) ;
 int ipc_make_request (int) ;
 int ipc_msg_set_buffers (int ,int *,int ) ;
 int ipc_send (int ,int *,int *) ;
 int sm_finalize () ;
 int sm_get_service (int *,char*) ;
 int sm_init () ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void frontend_switch_get_os(
      char *s, size_t len, int *major, int *minor)
{



   int patch;
   char firmware_version[0x100];
   result_t r;
   ipc_object_t set_sys;
   ipc_request_t rq;


   strlcpy(s, "Horizon OS", len);
   *major = 0;
   *minor = 0;

   LIB_ASSERT_OK(fail, sm_init());
   LIB_ASSERT_OK(fail_sm, sm_get_service(&set_sys, "set:sys"));

   rq = ipc_make_request(3);
   ipc_buffer_t buffers[] = {
      ipc_make_buffer(firmware_version, 0x100, 0x1a),
   };
   ipc_msg_set_buffers(rq, buffers, buffer_ptrs);

   LIB_ASSERT_OK(fail_object, ipc_send(set_sys, &rq, &ipc_default_response_fmt));

   sscanf(firmware_version + 0x68, "%d.%d.%d", major, minor, &patch);

fail_object:
   ipc_close(set_sys);
fail_sm:
   sm_finalize();
fail:
   return;

}
