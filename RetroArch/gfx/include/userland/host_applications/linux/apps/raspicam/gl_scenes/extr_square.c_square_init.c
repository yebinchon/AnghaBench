
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RASPITEX_STATE ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 float angle ;
 scalar_t__ anim_step ;
 int glClear (int) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glClearDepthf (int) ;
 int glLoadIdentity () ;
 int raspitexutil_gl_init_1_0 (int *) ;

__attribute__((used)) static int square_init(RASPITEX_STATE *state)
{
   int rc = raspitexutil_gl_init_1_0(state);

   if (rc != 0)
      goto end;

   angle = 0.0f;
   anim_step = 0;

   glClearColor(0, 0, 0, 0);
   glClearDepthf(1);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glLoadIdentity();

end:
   return rc;
}
