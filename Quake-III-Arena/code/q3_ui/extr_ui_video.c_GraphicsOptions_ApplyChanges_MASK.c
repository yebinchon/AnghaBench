#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {size_t curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_12__ {scalar_t__ curvalue; } ;
struct TYPE_13__ {TYPE_10__ filter; TYPE_9__ geometry; TYPE_8__ lighting; TYPE_7__ colordepth; TYPE_6__ driver; TYPE_5__ fs; TYPE_4__ mode; TYPE_3__ allow_extensions; TYPE_2__ tq; TYPE_1__ texturebits; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int QM_ACTIVATED ; 
 scalar_t__* s_drivers ; 
 TYPE_11__ s_graphicsoptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3( void *unused, int notification )
{
	if (notification != QM_ACTIVATED)
		return;

	switch ( s_graphicsoptions.texturebits.curvalue  )
	{
	case 0:
		FUNC2( "r_texturebits", 0 );
		break;
	case 1:
		FUNC2( "r_texturebits", 16 );
		break;
	case 2:
		FUNC2( "r_texturebits", 32 );
		break;
	}
	FUNC2( "r_picmip", 3 - s_graphicsoptions.tq.curvalue );
	FUNC2( "r_allowExtensions", s_graphicsoptions.allow_extensions.curvalue );
	FUNC2( "r_mode", s_graphicsoptions.mode.curvalue );
	FUNC2( "r_fullscreen", s_graphicsoptions.fs.curvalue );
	FUNC1( "r_glDriver", ( char * ) s_drivers[s_graphicsoptions.driver.curvalue] );
	switch ( s_graphicsoptions.colordepth.curvalue )
	{
	case 0:
		FUNC2( "r_colorbits", 0 );
		FUNC2( "r_depthbits", 0 );
		FUNC2( "r_stencilbits", 0 );
		break;
	case 1:
		FUNC2( "r_colorbits", 16 );
		FUNC2( "r_depthbits", 16 );
		FUNC2( "r_stencilbits", 0 );
		break;
	case 2:
		FUNC2( "r_colorbits", 32 );
		FUNC2( "r_depthbits", 24 );
		break;
	}
	FUNC2( "r_vertexLight", s_graphicsoptions.lighting.curvalue );

	if ( s_graphicsoptions.geometry.curvalue == 2 )
	{
		FUNC2( "r_lodBias", 0 );
		FUNC2( "r_subdivisions", 4 );
	}
	else if ( s_graphicsoptions.geometry.curvalue == 1 )
	{
		FUNC2( "r_lodBias", 1 );
		FUNC2( "r_subdivisions", 12 );
	}
	else
	{
		FUNC2( "r_lodBias", 1 );
		FUNC2( "r_subdivisions", 20 );
	}

	if ( s_graphicsoptions.filter.curvalue )
	{
		FUNC1( "r_textureMode", "GL_LINEAR_MIPMAP_LINEAR" );
	}
	else
	{
		FUNC1( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );
	}

	FUNC0( EXEC_APPEND, "vid_restart\n" );
}