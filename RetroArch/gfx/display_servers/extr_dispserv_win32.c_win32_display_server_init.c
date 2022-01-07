
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void dispserv_win32_t ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int **** CLSID_TaskbarList ;
 int CoCreateInstance (int *****,int *,int ,int *****,void**) ;
 int **** IID_ITaskbarList3 ;
 int ITaskbarList3_HrInit (int *) ;
 int RARCH_ERR (char*) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ calloc (int,int) ;
 int * g_taskbarList ;

__attribute__((used)) static void* win32_display_server_init(void)
{
   HRESULT hr;
   dispserv_win32_t *dispserv = (dispserv_win32_t*)calloc(1, sizeof(*dispserv));

   (void)hr;

   if (!dispserv)
      return ((void*)0);
   return dispserv;
}
