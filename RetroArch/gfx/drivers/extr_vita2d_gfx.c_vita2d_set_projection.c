
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float rotation; int mvp_no_rot; int mvp; } ;
typedef TYPE_1__ vita_video_t ;
struct video_ortho {int zfar; int znear; int top; int bottom; int right; int left; } ;
typedef int math_matrix_4x4 ;


 float M_PI ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_ortho (int ,int ,int ,int ,int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,float) ;

__attribute__((used)) static void vita2d_set_projection(vita_video_t *vita,
      struct video_ortho *ortho, bool allow_rotate)
{
   math_matrix_4x4 rot;


   matrix_4x4_ortho(vita->mvp_no_rot, ortho->left, ortho->right,
         ortho->bottom, ortho->top, ortho->znear, ortho->zfar);

   if (!allow_rotate)
   {
      vita->mvp = vita->mvp_no_rot;
      return;
   }

   matrix_4x4_rotate_z(rot, M_PI * vita->rotation / 180.0f);
   matrix_4x4_multiply(vita->mvp, rot, vita->mvp_no_rot);
}
