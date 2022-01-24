#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ num_glyphs; TYPE_1__* internal; } ;
struct TYPE_13__ {TYPE_5__* face; } ;
struct TYPE_12__ {int /*<<< orphan*/  metrics; } ;
struct TYPE_11__ {int /*<<< orphan*/  hinted_metrics; int /*<<< orphan*/ * metrics; } ;
struct TYPE_10__ {int /*<<< orphan*/  incremental_interface; } ;
typedef  TYPE_2__* TT_Size ;
typedef  int /*<<< orphan*/  TT_GlyphSlot ;
typedef  scalar_t__ FT_UInt ;
typedef  TYPE_3__* FT_Size ;
typedef  int FT_Int32 ;
typedef  TYPE_4__* FT_GlyphSlot ;
typedef  TYPE_5__* FT_Face ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int FT_LOAD_NO_AUTOHINT ; 
 int FT_LOAD_NO_BITMAP ; 
 int FT_LOAD_NO_HINTING ; 
 int FT_LOAD_NO_RECURSE ; 
 int FT_LOAD_NO_SCALE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  Invalid_Face_Handle ; 
 int /*<<< orphan*/  Invalid_Size_Handle ; 
 int /*<<< orphan*/  Invalid_Slot_Handle ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static FT_Error
  FUNC3( FT_GlyphSlot  ttslot,      /* TT_GlyphSlot */
                 FT_Size       ttsize,      /* TT_Size      */
                 FT_UInt       glyph_index,
                 FT_Int32      load_flags )
  {
    TT_GlyphSlot  slot = (TT_GlyphSlot)ttslot;
    TT_Size       size = (TT_Size)ttsize;
    FT_Face       face = ttslot->face;
    FT_Error      error;


    if ( !slot )
      return FUNC1( Invalid_Slot_Handle );

    if ( !size )
      return FUNC1( Invalid_Size_Handle );

    if ( !face )
      return FUNC1( Invalid_Face_Handle );

#ifdef FT_CONFIG_OPTION_INCREMENTAL
    if ( glyph_index >= (FT_UInt)face->num_glyphs &&
         !face->internal->incremental_interface   )
#else
    if ( glyph_index >= (FT_UInt)face->num_glyphs )
#endif
      return FUNC1( Invalid_Argument );

    if ( load_flags & FT_LOAD_NO_HINTING )
    {
      /* both FT_LOAD_NO_HINTING and FT_LOAD_NO_AUTOHINT   */
      /* are necessary to disable hinting for tricky fonts */

      if ( FUNC0( face ) )
        load_flags &= ~FT_LOAD_NO_HINTING;

      if ( load_flags & FT_LOAD_NO_AUTOHINT )
        load_flags |= FT_LOAD_NO_HINTING;
    }

    if ( load_flags & ( FT_LOAD_NO_RECURSE | FT_LOAD_NO_SCALE ) )
    {
      load_flags |= FT_LOAD_NO_BITMAP | FT_LOAD_NO_SCALE;

      if ( !FUNC0( face ) )
        load_flags |= FT_LOAD_NO_HINTING;
    }

    /* use hinted metrics only if we load a glyph with hinting */
    size->metrics = ( load_flags & FT_LOAD_NO_HINTING )
                      ? &ttsize->metrics
                      : &size->hinted_metrics;

    /* now load the glyph outline if necessary */
    error = FUNC2( size, slot, glyph_index, load_flags );

    /* force drop-out mode to 2 - irrelevant now */
    /* slot->outline.dropout_mode = 2; */

    return error;
  }