#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_4__ {int firstFrame; int frameLerp; int initialLerp; void* loopFrames; void* numFrames; } ;
typedef  TYPE_1__ animation_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FS_READ ; 
 int LEGS_WALKCR ; 
 int MAX_ANIMATIONS ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t TORSO_GESTURE ; 
 float FUNC4 (char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static qboolean FUNC10( const char *filename, animation_t *animations ) {
	char		*text_p, *prev;
	int			len;
	int			i;
	char		*token;
	float		fps;
	int			skip;
	char		text[20000];
	fileHandle_t	f;

	FUNC6( animations, 0, sizeof( animation_t ) * MAX_ANIMATIONS );

	// load the file
	len = FUNC8( filename, &f, FS_READ );
	if ( len <= 0 ) {
		return qfalse;
	}
	if ( len >= ( sizeof( text ) - 1 ) ) {
		FUNC2( "File %s too long\n", filename );
		return qfalse;
	}
	FUNC9( text, len, f );
	text[len] = 0;
	FUNC7( f );

	FUNC0(text);

	// parse the text
	text_p = text;
	skip = 0;	// quite the compiler warning

	// read optional parameters
	while ( 1 ) {
		prev = text_p;	// so we can unget
		token = FUNC1( &text_p );
		if ( !token ) {
			break;
		}
		if ( !FUNC3( token, "footsteps" ) ) {
			token = FUNC1( &text_p );
			if ( !token ) {
				break;
			}
			continue;
		} else if ( !FUNC3( token, "headoffset" ) ) {
			for ( i = 0 ; i < 3 ; i++ ) {
				token = FUNC1( &text_p );
				if ( !token ) {
					break;
				}
			}
			continue;
		} else if ( !FUNC3( token, "sex" ) ) {
			token = FUNC1( &text_p );
			if ( !token ) {
				break;
			}
			continue;
		}

		// if it is a number, start parsing animations
		if ( token[0] >= '0' && token[0] <= '9' ) {
			text_p = prev;	// unget the token
			break;
		}

		FUNC2( "unknown token '%s' is %s\n", token, filename );
	}

	// read information for each frame
	for ( i = 0 ; i < MAX_ANIMATIONS ; i++ ) {

		token = FUNC1( &text_p );
		if ( !token ) {
			break;
		}
		animations[i].firstFrame = FUNC5( token );
		// leg only frames are adjusted to not count the upper body only frames
		if ( i == LEGS_WALKCR ) {
			skip = animations[LEGS_WALKCR].firstFrame - animations[TORSO_GESTURE].firstFrame;
		}
		if ( i >= LEGS_WALKCR ) {
			animations[i].firstFrame -= skip;
		}

		token = FUNC1( &text_p );
		if ( !token ) {
			break;
		}
		animations[i].numFrames = FUNC5( token );

		token = FUNC1( &text_p );
		if ( !token ) {
			break;
		}
		animations[i].loopFrames = FUNC5( token );

		token = FUNC1( &text_p );
		if ( !token ) {
			break;
		}
		fps = FUNC4( token );
		if ( fps == 0 ) {
			fps = 1;
		}
		animations[i].frameLerp = 1000 / fps;
		animations[i].initialLerp = 1000 / fps;
	}

	if ( i != MAX_ANIMATIONS ) {
		FUNC2( "Error parsing animation file: %s", filename );
		return qfalse;
	}

	return qtrue;
}