#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_4__* clazz; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* done_face ) (TYPE_3__*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  (* finalizer ) (TYPE_3__*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* finalizer ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int face_flags; struct TYPE_15__* internal; int /*<<< orphan*/ * stream; TYPE_2__ generic; int /*<<< orphan*/ * size; int /*<<< orphan*/  sizes_list; scalar_t__ glyph; TYPE_1__ autohint; } ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int /*<<< orphan*/  FT_List_Destructor ;
typedef  TYPE_3__* FT_Face ;
typedef  TYPE_4__* FT_Driver_Class ;
typedef  TYPE_5__* FT_Driver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FT_FACE_FLAG_EXTERNAL_STREAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ destroy_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void
  FUNC8( FT_Memory  memory,
                FT_Face    face,
                FT_Driver  driver )
  {
    FT_Driver_Class  clazz = driver->clazz;


    /* discard auto-hinting data */
    if ( face->autohint.finalizer )
      face->autohint.finalizer( face->autohint.data );

    /* Discard glyph slots for this face.                           */
    /* Beware!  FT_Done_GlyphSlot() changes the field `face->glyph' */
    while ( face->glyph )
      FUNC0( face->glyph );

    /* discard all sizes for this face */
    FUNC2( &face->sizes_list,
                      (FT_List_Destructor)destroy_size,
                      memory,
                      driver );
    face->size = NULL;

    /* now discard client data */
    if ( face->generic.finalizer )
      face->generic.finalizer( face );

    /* discard charmaps */
    FUNC4( face, memory );

    /* finalize format-specific stuff */
    if ( clazz->done_face )
      clazz->done_face( face );

    /* close the stream for this face if needed */
    FUNC3(
      face->stream,
      ( face->face_flags & FT_FACE_FLAG_EXTERNAL_STREAM ) != 0 );

    face->stream = NULL;

    /* get rid of it */
    if ( face->internal )
    {
      FUNC1( face->internal );
    }
    FUNC1( face );
  }