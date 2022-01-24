#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {double width; double height; scalar_t__ userdata; } ;
typedef  TYPE_4__ video_frame_info_t ;
struct TYPE_13__ {scalar_t__ id; } ;
struct TYPE_17__ {double width; double height; double x; double y; scalar_t__ prim_type; TYPE_3__* coords; scalar_t__ texture; scalar_t__ matrix_data; TYPE_1__ pipeline; } ;
typedef  TYPE_5__ menu_display_ctx_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_14__ {unsigned int offset; scalar_t__ buffer; scalar_t__ size; } ;
struct TYPE_18__ {TYPE_2__ menu_display; int /*<<< orphan*/  dev; int /*<<< orphan*/  mvp_transposed; } ;
typedef  TYPE_6__ d3d9_video_t ;
struct TYPE_19__ {float z; int /*<<< orphan*/  color; int /*<<< orphan*/  v; int /*<<< orphan*/  u; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_7__ Vertex ;
struct TYPE_15__ {unsigned int vertices; float* vertex; float* tex_coord; float* color; } ;
typedef  int /*<<< orphan*/  LPDIRECT3DVERTEXBUFFER9 ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;
typedef  int /*<<< orphan*/  D3DPRIMITIVETYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLESTRIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 float* FUNC11 () ; 
 float* FUNC12 () ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   unsigned i;
   math_matrix_4x4 mop, m1, m2;
   LPDIRECT3DDEVICE9 dev;
   d3d9_video_t *d3d             = (d3d9_video_t*)video_info->userdata;
   Vertex * pv                   = NULL;
   const float *vertex           = NULL;
   const float *tex_coord        = NULL;
   const float *color            = NULL;

   if (!d3d || !draw || draw->pipeline.id)
      return;

   dev                           = d3d->dev;

   if((d3d->menu_display.offset + draw->coords->vertices )
         > (unsigned)d3d->menu_display.size)
      return;

   pv           = (Vertex*)
      FUNC3((LPDIRECT3DVERTEXBUFFER9)
            d3d->menu_display.buffer);

   if (!pv)
      return;

   pv          += d3d->menu_display.offset;
   vertex       = draw->coords->vertex;
   tex_coord    = draw->coords->tex_coord;
   color        = draw->coords->color;

   if (!vertex)
      vertex    = FUNC12();
   if (!tex_coord)
      tex_coord = FUNC11();

   for (i = 0; i < draw->coords->vertices; i++)
   {
      int colors[4];

      colors[0]   = *color++ * 0xFF;
      colors[1]   = *color++ * 0xFF;
      colors[2]   = *color++ * 0xFF;
      colors[3]   = *color++ * 0xFF;

      pv[i].x     = *vertex++;
      pv[i].y     = *vertex++;
      pv[i].z     = 0.5f;
      pv[i].u     = *tex_coord++;
      pv[i].v     = *tex_coord++;

      pv[i].color =
         FUNC0(
               colors[3], /* A */
               colors[0], /* R */
               colors[1], /* G */
               colors[2]  /* B */
               );
   }
   FUNC4((LPDIRECT3DVERTEXBUFFER9)
         d3d->menu_display.buffer);

   if(!draw->matrix_data)
      draw->matrix_data = FUNC10(video_info);

   /* ugh */
   FUNC7(m1,       2.0,  2.0, 0);
   FUNC8(mop, -1.0, -1.0, 0);
   FUNC6(m2, mop, m1);
   FUNC6(m1,
         *((math_matrix_4x4*)draw->matrix_data), m2);
   FUNC7(mop,
         (draw->width  / 2.0) / video_info->width,
         (draw->height / 2.0) / video_info->height, 0);
   FUNC6(m2, mop, m1);
   FUNC8(mop,
         (draw->x + (draw->width  / 2.0)) / video_info->width,
         (draw->y + (draw->height / 2.0)) / video_info->height,
         0);
   FUNC6(m1, mop, m2);
   FUNC6(m2, d3d->mvp_transposed, m1);
   FUNC5(&m1, &m2);

   FUNC2(d3d->dev, &m1);

   if (draw && draw->texture)
      FUNC9(draw, d3d);

   FUNC1(dev,
         (D3DPRIMITIVETYPE)FUNC13(draw->prim_type),
         d3d->menu_display.offset,
         draw->coords->vertices -
         ((draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLESTRIP)
          ? 2 : 0));

   d3d->menu_display.offset += draw->coords->vertices;
}