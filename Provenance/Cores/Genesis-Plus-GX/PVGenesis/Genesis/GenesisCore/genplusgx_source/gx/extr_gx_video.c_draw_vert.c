
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int f32 ;


 int GX_Position1x8 (int ) ;
 int GX_TexCoord2f32 (int ,int ) ;

__attribute__((used)) static inline void draw_vert(u8 pos, f32 s, f32 t)
{
  GX_Position1x8(pos);
  GX_TexCoord2f32(s, t);
}
