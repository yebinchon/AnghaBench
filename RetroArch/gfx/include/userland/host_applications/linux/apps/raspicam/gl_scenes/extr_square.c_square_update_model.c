
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RASPITEX_STATE ;
typedef int GLfloat ;


 int angle ;
 int anim_step ;

__attribute__((used)) static int square_update_model(RASPITEX_STATE *state)
{
   int frames_per_rev = 30 * 15;
   (void) state;
   angle = (anim_step * 360) / (GLfloat) frames_per_rev;
   anim_step = (anim_step + 1) % frames_per_rev;

   return 0;
}
