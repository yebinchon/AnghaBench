
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDTEX_T ;
typedef int VIDTEX_PARAMS_T ;
typedef int EGLNativeWindowType ;


 int * vidtex_create (int ) ;
 int vidtex_destroy (int *) ;
 int vidtex_play (int *,int const*) ;

int vidtex_run(const VIDTEX_PARAMS_T *params, EGLNativeWindowType win)
{
   VIDTEX_T *vt;
   int rv = -1;

   vt = vidtex_create(win);
   if (vt)
   {
      rv = vidtex_play(vt, params);
      vidtex_destroy(vt);
   }

   return rv;
}
