#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_13__ {double den; scalar_t__ num; } ;
struct TYPE_14__ {int* crop; TYPE_3__ par; TYPE_2__* title; int /*<<< orphan*/ * list_attachment; } ;
typedef  TYPE_4__ hb_job_t ;
struct TYPE_15__ {int /*<<< orphan*/  renderer; int /*<<< orphan*/  ssaTrack; int /*<<< orphan*/  ssa; } ;
typedef  TYPE_5__ hb_filter_private_t ;
struct TYPE_16__ {TYPE_5__* private_data; } ;
typedef  TYPE_6__ hb_filter_object_t ;
struct TYPE_17__ {scalar_t__ type; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;
typedef  TYPE_7__ hb_attachment_t ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_12__ {TYPE_1__ geometry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASS_HINTING_LIGHT ; 
 scalar_t__ FONT_OTF_ATTACH ; 
 scalar_t__ FONT_TTF_ATTACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  ssa_log ; 

__attribute__((used)) static int FUNC18( hb_filter_object_t * filter, hb_job_t * job )
{
    hb_filter_private_t * pv = filter->private_data;

    pv->ssa = FUNC1();
    if ( !pv->ssa ) {
        FUNC14( "decssasub: libass initialization failed\n" );
        return 1;
    }

    // Redirect libass output to hb_log
    FUNC11( pv->ssa, ssa_log, NULL );

    // Load embedded fonts
    hb_list_t * list_attachment = job->list_attachment;
    int i;
    for ( i = 0; i < FUNC15(list_attachment); i++ )
    {
        hb_attachment_t * attachment = FUNC16( list_attachment, i );

        if ( attachment->type == FONT_TTF_ATTACH ||
             attachment->type == FONT_OTF_ATTACH )
        {
            FUNC0(
                pv->ssa,
                attachment->name,
                attachment->data,
                attachment->size );
        }
    }

    FUNC5( pv->ssa, 1 );
    FUNC12( pv->ssa, NULL );

    pv->renderer = FUNC3( pv->ssa );
    if ( !pv->renderer ) {
        FUNC17( "decssasub: renderer initialization failed\n" );
        return 1;
    }

    FUNC13( pv->renderer, 0 );
    FUNC9( pv->renderer, ASS_HINTING_LIGHT ); // VLC 1.0.4 uses this
    FUNC6( pv->renderer, 1.0 );
    FUNC10( pv->renderer, 1.0 );

    // Setup default font family
    //
    // SSA v4.00 requires that "Arial" be the default font
    const char *font = NULL;
    const char *family = "Arial";
    // NOTE: This can sometimes block for several *seconds*.
    //       It seems that process_fontdata() for some embedded fonts is slow.
    FUNC7( pv->renderer, font, family, /*haveFontConfig=*/1, NULL, 1 );

    // Setup track state
    pv->ssaTrack = FUNC2( pv->ssa );
    if ( !pv->ssaTrack ) {
        FUNC17( "decssasub: ssa track initialization failed\n" );
        return 1;
    }

    int height = job->title->geometry.height - job->crop[0] - job->crop[1];
    int width = job->title->geometry.width - job->crop[2] - job->crop[3];
    FUNC8( pv->renderer, width, height);

    double par = (double)job->par.num / job->par.den;
    FUNC4( pv->renderer, 1, par );

    return 0;
}