#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 

void FUNC7( const char *name, byte **pic, int *width, int *height ) {
	int		len;

	*pic = NULL;
	*width = 0;
	*height = 0;

	len = FUNC6(name);
	if (len<5) {
		return;
	}

	if ( !FUNC4( name+len-4, ".tga" ) ) {
	  FUNC3( name, pic, width, height );            // try tga first
    if (!*pic) {                                    //
		  char altname[MAX_QPATH];                      // try jpg in place of tga 
      FUNC5( altname, name );                      
      len = FUNC6( altname );                  
      altname[len-3] = 'j';
      altname[len-2] = 'p';
      altname[len-1] = 'g';
			FUNC1( altname, pic, width, height );
		}
  } else if ( !FUNC4(name+len-4, ".pcx") ) {
    FUNC2( name, pic, width, height );
	} else if ( !FUNC4( name+len-4, ".bmp" ) ) {
		FUNC0( name, pic, width, height );
	} else if ( !FUNC4( name+len-4, ".jpg" ) ) {
		FUNC1( name, pic, width, height );
	}
}