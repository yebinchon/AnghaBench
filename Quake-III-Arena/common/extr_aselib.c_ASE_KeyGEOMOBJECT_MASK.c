#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t currentObject; TYPE_2__* objects; scalar_t__ grabAnims; } ;
struct TYPE_4__ {scalar_t__ currentFrame; scalar_t__ numFrames; } ;
struct TYPE_5__ {char* name; scalar_t__ numAnimations; TYPE_1__ anim; int /*<<< orphan*/  materialRef; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASE_KeyMESH ; 
 int /*<<< orphan*/  ASE_KeyMESH_ANIMATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ MAX_ASE_ANIMATION_FRAMES ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__ ase ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ s_token ; 
 scalar_t__* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 scalar_t__* FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12( const char *token )
{
	if ( !FUNC8( token, "*NODE_NAME" ) )
	{
		char *name = ase.objects[ase.currentObject].name;

		FUNC0( qtrue );
		FUNC5( ( " %s\n", s_token ) );
		FUNC9( ase.objects[ase.currentObject].name, s_token + 1 );
		if ( FUNC7( ase.objects[ase.currentObject].name, '"' ) )
			*FUNC7( ase.objects[ase.currentObject].name, '"' ) = 0;

		if ( FUNC11( name, "tag" ) == name )
		{
			while ( FUNC7( name, '_' ) != FUNC10( name, '_' ) )
			{
				*FUNC10( name, '_' ) = 0;
			}
			while ( FUNC10( name, ' ' ) )
			{
				*FUNC10( name, ' ' ) = 0;
			}
		}
	}
	else if ( !FUNC8( token, "*NODE_PARENT" ) )
	{
		FUNC3();
	}
	// ignore unused data blocks
	else if ( !FUNC8( token, "*NODE_TM" ) ||
		      !FUNC8( token, "*TM_ANIMATION" ) )
	{
		FUNC1( 0 );
	}
	// ignore regular meshes that aren't part of animation
	else if ( !FUNC8( token, "*MESH" ) && !ase.grabAnims )
	{
/*
		if ( strstr( ase.objects[ase.currentObject].name, "tag_" ) == ase.objects[ase.currentObject].name ) 
		{
			s_forceStaticMesh = true;
			ASE_ParseBracedBlock( ASE_KeyMESH );
			s_forceStaticMesh = false;
		}
*/
		FUNC1( ASE_KeyMESH );
		if ( ++ase.objects[ase.currentObject].anim.currentFrame == MAX_ASE_ANIMATION_FRAMES )
		{
			FUNC4( "Too many animation frames" );
		}
		ase.objects[ase.currentObject].anim.numFrames = ase.objects[ase.currentObject].anim.currentFrame;
		ase.objects[ase.currentObject].numAnimations++;
/*
		// ignore meshes that aren't part of animations if this object isn't a 
		// a tag
		else
		{
			ASE_ParseBracedBlock( 0 );
		}
*/
	}
	// according to spec these are obsolete
	else if ( !FUNC8( token, "*MATERIAL_REF" ) )
	{
		FUNC0( qfalse );

		ase.objects[ase.currentObject].materialRef = FUNC6( s_token );
	}
	// loads a sequence of animation frames
	else if ( !FUNC8( token, "*MESH_ANIMATION" ) )
	{
		if ( ase.grabAnims )
		{
			FUNC5( ( "..found MESH_ANIMATION\n" ) );

			if ( ase.objects[ase.currentObject].numAnimations )
			{
				FUNC4( "Multiple MESH_ANIMATIONS within a single GEOM_OBJECT" );
			}
			FUNC1( ASE_KeyMESH_ANIMATION );
			ase.objects[ase.currentObject].anim.numFrames = ase.objects[ase.currentObject].anim.currentFrame;
			ase.objects[ase.currentObject].numAnimations++;
		}
		else
		{
			FUNC2();
		}
	}
	// skip unused info
	else if ( !FUNC8( token, "*PROP_MOTIONBLUR" ) ||
		      !FUNC8( token, "*PROP_CASTSHADOW" ) ||
			  !FUNC8( token, "*PROP_RECVSHADOW" ) )
	{
		FUNC3();
	}
}