#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surfName ;
struct TYPE_8__ {char* name; int numSurfaces; void* shader; struct TYPE_8__** surfaces; } ;
typedef  TYPE_1__ skin_t ;
typedef  TYPE_1__ skinSurface_t ;
typedef  size_t qhandle_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* FS_FreeFile ) (char*) ;TYPE_1__* (* Hunk_Alloc ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* FS_ReadFile ) (char const*,void**) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*) ;} ;
struct TYPE_9__ {size_t numSkins; TYPE_1__** skins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  LIGHTMAP_NONE ; 
 int MAX_QPATH ; 
 size_t MAX_SKINS ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 void* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  h_low ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_7__ ri ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC11 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,void**) ; 
 TYPE_1__* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 TYPE_3__ tr ; 

qhandle_t FUNC16( const char *name ) {
	qhandle_t	hSkin;
	skin_t		*skin;
	skinSurface_t	*surf;
	char		*text, *text_p;
	char		*token;
	char		surfName[MAX_QPATH];

	if ( !name || !name[0] ) {
		FUNC0( "Empty name passed to RE_RegisterSkin\n" );
		return 0;
	}

	if ( FUNC8( name ) >= MAX_QPATH ) {
		FUNC0( "Skin name exceeds MAX_QPATH\n" );
		return 0;
	}


	// see if the skin is already loaded
	for ( hSkin = 1; hSkin < tr.numSkins ; hSkin++ ) {
		skin = tr.skins[hSkin];
		if ( !FUNC2( skin->name, name ) ) {
			if( skin->numSurfaces == 0 ) {
				return 0;		// default skin
			}
			return hSkin;
		}
	}

	// allocate a new skin
	if ( tr.numSkins == MAX_SKINS ) {
		ri.Printf( PRINT_WARNING, "WARNING: RE_RegisterSkin( '%s' ) MAX_SKINS hit\n", name );
		return 0;
	}
	tr.numSkins++;
	skin = ri.Hunk_Alloc( sizeof( skin_t ), h_low );
	tr.skins[hSkin] = skin;
	FUNC4( skin->name, name, sizeof( skin->name ) );
	skin->numSurfaces = 0;

	// make sure the render thread is stopped
	FUNC6();

	// If not a .skin file, load as a single shader
	if ( FUNC7( name + FUNC8( name ) - 5, ".skin" ) ) {
		skin->numSurfaces = 1;
		skin->surfaces[0] = ri.Hunk_Alloc( sizeof(skin->surfaces[0]), h_low );
		skin->surfaces[0]->shader = FUNC5( name, LIGHTMAP_NONE, qtrue );
		return hSkin;
	}

	// load and parse the skin file
    ri.FS_ReadFile( name, (void **)&text );
	if ( !text ) {
		return 0;
	}

	text_p = text;
	while ( text_p && *text_p ) {
		// get surface name
		token = FUNC1( &text_p );
		FUNC4( surfName, token, sizeof( surfName ) );

		if ( !token[0] ) {
			break;
		}
		// lowercase the surface name so skin compares are faster
		FUNC3( surfName );

		if ( *text_p == ',' ) {
			text_p++;
		}

		if ( FUNC9( token, "tag_" ) ) {
			continue;
		}
		
		// parse the shader name
		token = FUNC1( &text_p );

		surf = skin->surfaces[ skin->numSurfaces ] = ri.Hunk_Alloc( sizeof( *skin->surfaces[0] ), h_low );
		FUNC4( surf->name, surfName, sizeof( surf->name ) );
		surf->shader = FUNC5( token, LIGHTMAP_NONE, qtrue );
		skin->numSurfaces++;
	}

	ri.FS_FreeFile( text );


	// never let a skin have 0 shaders
	if ( skin->numSurfaces == 0 ) {
		return 0;		// use default skin
	}

	return hSkin;
}