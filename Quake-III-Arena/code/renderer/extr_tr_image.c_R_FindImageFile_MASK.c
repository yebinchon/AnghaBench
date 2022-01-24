#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {char* imgName; int wrapClampMode; int /*<<< orphan*/  allowPicmip; int /*<<< orphan*/  mipmap; struct TYPE_6__* next; } ;
typedef  TYPE_1__ image_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_7__ {int /*<<< orphan*/  (* Free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char*) ;} ;

/* Variables and functions */
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  PRINT_DEVELOPER ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 long FUNC2 (char const*) ; 
 TYPE_1__** hashTable ; 
 TYPE_2__ ri ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char FUNC11 (char) ; 

image_t	*FUNC12( const char *name, qboolean mipmap, qboolean allowPicmip, int glWrapClampMode ) {
	image_t	*image;
	int		width, height;
	byte	*pic;
	long	hash;

	if (!name) {
		return NULL;
	}

	hash = FUNC2(name);

	//
	// see if the image is already loaded
	//
	for (image=hashTable[hash]; image; image=image->next) {
		if ( !FUNC3( name, image->imgName ) ) {
			// the white image can be used with any set of parms, but other mismatches are errors
			if ( FUNC3( name, "*white" ) ) {
				if ( image->mipmap != mipmap ) {
					ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed mipmap parm\n", name );
				}
				if ( image->allowPicmip != allowPicmip ) {
					ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed allowPicmip parm\n", name );
				}
				if ( image->wrapClampMode != glWrapClampMode ) {
					ri.Printf( PRINT_ALL, "WARNING: reused image %s with mixed glWrapClampMode parm\n", name );
				}
			}
			return image;
		}
	}

	//
	// load the pic from disk
	//
	FUNC1( name, &pic, &width, &height );
	if ( pic == NULL ) {                                    // if we dont get a successful load
	  char altname[MAX_QPATH];                              // copy the name
    int len;                                              //  
    FUNC4( altname, name );                              //
    len = FUNC5( altname );                              // 
    altname[len-3] = FUNC11(altname[len-3]);             // and try upper case extension for unix systems
    altname[len-2] = FUNC11(altname[len-2]);             //
    altname[len-1] = FUNC11(altname[len-1]);             //
		ri.Printf( PRINT_ALL, "trying %s...\n", altname );    // 
	  FUNC1( altname, &pic, &width, &height );        //
    if (pic == NULL) {                                    // if that fails
      return NULL;                                        // bail
    }
	}

	image = FUNC0( ( char * ) name, pic, width, height, mipmap, allowPicmip, glWrapClampMode );
	ri.Free( pic );
	return image;
}