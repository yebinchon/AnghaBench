
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VCOS_STATUS_T ;
typedef int GX_CLIENT_STATE_T ;


 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ gx_priv_font_init (char const*) ;
 scalar_t__ gx_priv_initialise () ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int *) ;

VCOS_STATUS_T gx_graphics_init(const char *font_dir)
{
   GX_CLIENT_STATE_T save;
   VCOS_STATUS_T rc;

   gx_priv_save(&save, ((void*)0));

   rc = gx_priv_initialise();
   if (rc == VCOS_SUCCESS)
      rc = gx_priv_font_init(font_dir);

   gx_priv_restore(&save);

   return rc;
}
