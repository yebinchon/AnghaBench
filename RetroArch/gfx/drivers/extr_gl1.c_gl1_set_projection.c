
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_ortho {int zfar; int znear; int top; int bottom; int right; int left; } ;
typedef int math_matrix_4x4 ;
struct TYPE_3__ {float rotation; int mvp_no_rot; int mvp; } ;
typedef TYPE_1__ gl1_t ;


 float M_PI ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_ortho (int ,int ,int ,int ,int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,float) ;

__attribute__((used)) static void gl1_set_projection(gl1_t *gl1,
      struct video_ortho *ortho, bool allow_rotate)
{
   math_matrix_4x4 rot;


   matrix_4x4_ortho(gl1->mvp_no_rot, ortho->left, ortho->right,
         ortho->bottom, ortho->top, ortho->znear, ortho->zfar);

   if (!allow_rotate)
   {
      gl1->mvp = gl1->mvp_no_rot;
      return;
   }

   matrix_4x4_rotate_z(rot, M_PI * gl1->rotation / 180.0f);
   matrix_4x4_multiply(gl1->mvp, rot, gl1->mvp_no_rot);
}
