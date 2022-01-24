#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gray_TWorker ;
struct TYPE_10__ {scalar_t__ pitch; scalar_t__ origin; } ;
struct TYPE_12__ {scalar_t__ n_points; int n_contours; scalar_t__* contours; int /*<<< orphan*/  points; } ;
struct TYPE_15__ {scalar_t__ min_ex; scalar_t__ min_ey; scalar_t__ max_ex; scalar_t__ max_ey; int /*<<< orphan*/ * render_span_data; void* render_span; TYPE_1__ target; TYPE_3__ outline; } ;
struct TYPE_14__ {int xMin; int xMax; int yMin; int yMax; } ;
struct TYPE_13__ {int rows; scalar_t__ pitch; scalar_t__ width; scalar_t__ buffer; } ;
struct TYPE_11__ {int flags; TYPE_5__ clip_box; int /*<<< orphan*/ * user; scalar_t__ gray_spans; TYPE_4__* target; scalar_t__ source; } ;
typedef  void* FT_Raster_Span_Func ;
typedef  TYPE_2__ FT_Raster_Params ;
typedef  int /*<<< orphan*/  FT_Raster ;
typedef  void* FT_Pos ;
typedef  TYPE_3__ FT_Outline ;
typedef  TYPE_4__ FT_Bitmap ;
typedef  TYPE_5__ FT_BBox ;

/* Variables and functions */
 void* FUNC0 (long,long) ; 
 void* FUNC1 (long,long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,TYPE_5__*) ; 
 int FT_RASTER_FLAG_AA ; 
 int FT_RASTER_FLAG_CLIP ; 
 int FT_RASTER_FLAG_DIRECT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  Invalid_Mode ; 
 int /*<<< orphan*/  Invalid_Outline ; 
 int /*<<< orphan*/  RAS_VAR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_6__ ras ; 

__attribute__((used)) static int
  FUNC5( FT_Raster                raster,
                      const FT_Raster_Params*  params )
  {
    const FT_Outline*  outline    = (const FT_Outline*)params->source;
    const FT_Bitmap*   target_map = params->target;
    FT_BBox            cbox, clip;

#ifndef FT_STATIC_RASTER
    gray_TWorker  worker[1];
#endif


    if ( !raster )
      return FUNC3( Invalid_Argument );

    /* this version does not support monochrome rendering */
    if ( !( params->flags & FT_RASTER_FLAG_AA ) )
      return FUNC3( Invalid_Mode );

    if ( !outline )
      return FUNC3( Invalid_Outline );

    /* return immediately if the outline is empty */
    if ( outline->n_points == 0 || outline->n_contours <= 0 )
      return 0;

    if ( !outline->contours || !outline->points )
      return FUNC3( Invalid_Outline );

    if ( outline->n_points !=
           outline->contours[outline->n_contours - 1] + 1 )
      return FUNC3( Invalid_Outline );

    ras.outline = *outline;

    if ( params->flags & FT_RASTER_FLAG_DIRECT )
    {
      if ( !params->gray_spans )
        return 0;

      ras.render_span      = (FT_Raster_Span_Func)params->gray_spans;
      ras.render_span_data = params->user;
    }
    else
    {
      /* if direct mode is not set, we must have a target bitmap */
      if ( !target_map )
        return FUNC3( Invalid_Argument );

      /* nothing to do */
      if ( !target_map->width || !target_map->rows )
        return 0;

      if ( !target_map->buffer )
        return FUNC3( Invalid_Argument );

      if ( target_map->pitch < 0 )
        ras.target.origin = target_map->buffer;
      else
        ras.target.origin = target_map->buffer
              + ( target_map->rows - 1 ) * (unsigned int)target_map->pitch;

      ras.target.pitch = target_map->pitch;

      ras.render_span      = (FT_Raster_Span_Func)NULL;
      ras.render_span_data = NULL;
    }

    FUNC2( outline, &cbox );

    /* reject too large outline coordinates */
    if ( cbox.xMin < -0x1000000L || cbox.xMax > 0x1000000L ||
         cbox.yMin < -0x1000000L || cbox.yMax > 0x1000000L )
      return FUNC3( Invalid_Outline );

    /* truncate the bounding box to integer pixels */
    cbox.xMin = cbox.xMin >> 6;
    cbox.yMin = cbox.yMin >> 6;
    cbox.xMax = ( cbox.xMax + 63 ) >> 6;
    cbox.yMax = ( cbox.yMax + 63 ) >> 6;

    /* compute clipping box */
    if ( !( params->flags & FT_RASTER_FLAG_DIRECT ) )
    {
      /* compute clip box from target pixmap */
      clip.xMin = 0;
      clip.yMin = 0;
      clip.xMax = (FT_Pos)target_map->width;
      clip.yMax = (FT_Pos)target_map->rows;
    }
    else if ( params->flags & FT_RASTER_FLAG_CLIP )
      clip = params->clip_box;
    else
    {
      clip.xMin = -32768L;
      clip.yMin = -32768L;
      clip.xMax =  32767L;
      clip.yMax =  32767L;
    }

    /* clip to target bitmap, exit if nothing to do */
    ras.min_ex = FUNC0( cbox.xMin, clip.xMin );
    ras.min_ey = FUNC0( cbox.yMin, clip.yMin );
    ras.max_ex = FUNC1( cbox.xMax, clip.xMax );
    ras.max_ey = FUNC1( cbox.yMax, clip.yMax );

    if ( ras.max_ex <= ras.min_ex || ras.max_ey <= ras.min_ey )
      return 0;

    return FUNC4( RAS_VAR );
  }