
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotation; int * ubo_mvp; } ;
typedef TYPE_1__ wiiu_video_t ;
typedef int math_matrix_4x4 ;


 int GX2Invalidate (int ,int *,int) ;
 int GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK ;
 int M_PI_2 ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_ortho (int ,int ,int,int,int ,int,int) ;
 int matrix_4x4_rotate_z (int ,int) ;

__attribute__((used)) static void wiiu_set_projection(wiiu_video_t *wiiu)
{
   math_matrix_4x4 proj, rot;
   matrix_4x4_ortho(proj, 0, 1, 1, 0, -1, 1);
   matrix_4x4_rotate_z(rot, wiiu->rotation * -M_PI_2);
   matrix_4x4_multiply((*wiiu->ubo_mvp), rot, proj);
   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->ubo_mvp, sizeof(*wiiu->ubo_mvp));
}
