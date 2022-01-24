#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* color; int width; int height; float* pixels; int /*<<< orphan*/  averageColor; scalar_t__* shader; scalar_t__* editorimage; scalar_t__* lightimage; } ;
typedef  TYPE_1__ shaderInfo_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float**,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,float**,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* gamedir ; 
 float* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (float*,int,int) ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC12( shaderInfo_t *si ) {
	char			filename[1024];
	int				i, count;
	float			color[4];
  byte      *buffer;
  qboolean  bTGA = qtrue;

	// look for the lightimage if it is specified
	if ( si->lightimage[0] ) {
		FUNC11( filename, "%s%s", gamedir, si->lightimage );
		FUNC1( filename, ".tga" );
    buffer = FUNC2(filename, &bTGA);
    if ( buffer != NULL) {
      goto loadTga;
    }
  }

	// look for the editorimage if it is specified
	if ( si->editorimage[0] ) {
		FUNC11( filename, "%s%s", gamedir, si->editorimage );
		FUNC1( filename, ".tga" );
    buffer = FUNC2(filename, &bTGA);
    if ( buffer != NULL) {
      goto loadTga;
    }
  }

  // just try the shader name with a .tga
	// on unix, we have case sensitivity problems...
  FUNC11( filename, "%s%s.tga", gamedir, si->shader );
  buffer = FUNC2(filename, &bTGA);
  if ( buffer != NULL) {
		goto loadTga;
	}

  FUNC11( filename, "%s%s.TGA", gamedir, si->shader );
  buffer = FUNC2(filename, &bTGA);
  if ( buffer != NULL) {
		goto loadTga;
	}

	// couldn't load anything
	FUNC7("WARNING: Couldn't find image for shader %s\n", si->shader );

	si->color[0] = 1;
	si->color[1] = 1;
	si->color[2] = 1;
	si->width = 64;
	si->height = 64;
	si->pixels = FUNC9( si->width * si->height * 4 );
	FUNC10 ( si->pixels, 255, si->width * si->height * 4 );
	return;

	// load the image to get dimensions and color
loadTga:
  if ( bTGA) {
	  FUNC4( buffer, &si->pixels, &si->width, &si->height );
  }
  else {
#ifdef _WIN32
    LoadJPGBuff(buffer, &si->pixels, &si->width, &si->height );
#endif
  }

  FUNC8(buffer);

	count = si->width * si->height;

	FUNC5( color );
	color[ 3 ] = 0;
	for ( i = 0 ; i < count ; i++ ) {
		color[0] += si->pixels[ i * 4 + 0 ];
		color[1] += si->pixels[ i * 4 + 1 ];
		color[2] += si->pixels[ i * 4 + 2 ];
		color[3] += si->pixels[ i * 4 + 3 ];
	}
	FUNC0( color, si->color );
	FUNC6( color, 1.0/count, si->averageColor );
}