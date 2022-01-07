
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRECTINPUT_VERSION ;
 int DirectInput8Create (int ,int ,int *****,void**,int *) ;
 int GetModuleHandle (int *) ;
 int **** IID_IDirectInput8 ;
 int RARCH_ERR (char*) ;
 int SUCCEEDED (int ) ;
 scalar_t__ g_dinput_ctx ;

bool dinput_init_context(void)
{
   if (g_dinput_ctx)
      return 1;
      if (!(SUCCEEDED(DirectInput8Create(
                     GetModuleHandle(((void*)0)), DIRECTINPUT_VERSION,
                     &IID_IDirectInput8,
                     (void**)&g_dinput_ctx, ((void*)0)))))

      goto error;

   return 1;

error:
   RARCH_ERR("[DINPUT]: Failed to initialize DirectInput.\n");
   return 0;
}
