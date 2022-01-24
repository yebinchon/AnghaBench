#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pathname ;
struct TYPE_8__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int cloudHeight; void** innerbox; void** outerbox; } ;
struct TYPE_7__ {int /*<<< orphan*/  isSky; TYPE_1__ sky; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {void* defaultImage; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  GL_CLAMP ; 
 int /*<<< orphan*/  GL_REPEAT ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_4__ ri ; 
 TYPE_3__ shader ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ tr ; 

__attribute__((used)) static void FUNC9( char **text ) {
	char		*token;
	static char	*suf[6] = {"rt", "bk", "lf", "ft", "up", "dn"};
	char		pathname[MAX_QPATH];
	int			i;

	// outerbox
	token = FUNC0( text, qfalse );
	if ( token[0] == 0 ) {
		ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
		return;
	}
	if ( FUNC5( token, "-" ) ) {
		for (i=0 ; i<6 ; i++) {
			FUNC1( pathname, sizeof(pathname), "%s_%s.tga"
				, token, suf[i] );
			shader.sky.outerbox[i] = FUNC2( ( char * ) pathname, qtrue, qtrue, GL_CLAMP );
			if ( !shader.sky.outerbox[i] ) {
				shader.sky.outerbox[i] = tr.defaultImage;
			}
		}
	}

	// cloudheight
	token = FUNC0( text, qfalse );
	if ( token[0] == 0 ) {
		ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
		return;
	}
	shader.sky.cloudHeight = FUNC4( token );
	if ( !shader.sky.cloudHeight ) {
		shader.sky.cloudHeight = 512;
	}
	FUNC3( shader.sky.cloudHeight );


	// innerbox
	token = FUNC0( text, qfalse );
	if ( token[0] == 0 ) {
		ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
		return;
	}
	if ( FUNC5( token, "-" ) ) {
		for (i=0 ; i<6 ; i++) {
			FUNC1( pathname, sizeof(pathname), "%s_%s.tga"
				, token, suf[i] );
			shader.sky.innerbox[i] = FUNC2( ( char * ) pathname, qtrue, qtrue, GL_REPEAT );
			if ( !shader.sky.innerbox[i] ) {
				shader.sky.innerbox[i] = tr.defaultImage;
			}
		}
	}

	shader.isSky = qtrue;
}