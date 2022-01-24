#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* normal; void** xyz; } ;
typedef  TYPE_1__ md3XyzNormal_t ;
struct TYPE_9__ {int* indexes; } ;
typedef  TYPE_2__ md3Triangle_t ;
struct TYPE_10__ {int ident; int flags; int numFrames; int numShaders; int numTriangles; int ofsTriangles; int numVerts; int ofsShaders; int ofsSt; int ofsXyzNormals; int ofsEnd; } ;
typedef  TYPE_3__ md3Surface_t ;
struct TYPE_11__ {void** st; } ;
typedef  TYPE_4__ md3St_t ;
struct TYPE_12__ {int version; int ident; int numFrames; int numTags; int numSurfaces; int numSkins; int ofsFrames; int ofsTags; int ofsSurfaces; int ofsEnd; } ;
typedef  TYPE_5__ md3Header_t ;
struct TYPE_13__ {void** localOrigin; void*** bounds; void* radius; } ;
typedef  TYPE_6__ md3Frame_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (void*) ; 
 int MD3_VERSION ; 
 int FUNC5 (char*,void**) ; 
 int SHADER_MAX_INDEXES ; 
 int SHADER_MAX_VERTEXES ; 
 int FUNC6 (char*,void**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 char* gamedir ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char const*) ; 

md3Header_t *FUNC9( const char *mod_name ) {
	int					i, j;
	md3Header_t			*md3;
    md3Frame_t			*frame;
	md3Surface_t		*surf;
	md3Triangle_t		*tri;
	md3St_t				*st;
	md3XyzNormal_t		*xyz;
	int					version;
	char				filename[1024];
	int					len;

	FUNC8( filename, "%s%s", gamedir, mod_name );
	len = FUNC6( filename, (void **)&md3 );
#ifdef _WIN32
  if ( len <= 0 ) {
    len = PakLoadAnyFile(filename, (void **)&md3);
  }
#endif
	if ( len <= 0 ) {
	  return NULL;
	}

  version = FUNC3 (md3->version);
	if (version != MD3_VERSION) {
		FUNC7( "R_LoadMD3: %s has wrong version (%i should be %i)\n",
				 mod_name, version, MD3_VERSION);
		return NULL;
	}

    FUNC1(md3->ident);
    FUNC1(md3->version);
    FUNC1(md3->numFrames);
    FUNC1(md3->numTags);
    FUNC1(md3->numSurfaces);
    FUNC1(md3->numSkins);
    FUNC1(md3->ofsFrames);
    FUNC1(md3->ofsTags);
    FUNC1(md3->ofsSurfaces);
    FUNC1(md3->ofsEnd);

	if ( md3->numFrames < 1 ) {
		FUNC7( "R_LoadMD3: %s has no frames\n", mod_name );
		return NULL;
	}

    // we don't need to swap tags in the renderer, they aren't used
    
	// swap all the frames
    frame = (md3Frame_t *) ( (byte *)md3 + md3->ofsFrames );
    for ( i = 0 ; i < md3->numFrames ; i++, frame++) {
    	frame->radius = FUNC2( frame->radius );
        for ( j = 0 ; j < 3 ; j++ ) {
            frame->bounds[0][j] = FUNC2( frame->bounds[0][j] );
            frame->bounds[1][j] = FUNC2( frame->bounds[1][j] );
	    	frame->localOrigin[j] = FUNC2( frame->localOrigin[j] );
        }
	}

	// swap all the surfaces
	surf = (md3Surface_t *) ( (byte *)md3 + md3->ofsSurfaces );
	for ( i = 0 ; i < md3->numSurfaces ; i++) {

        FUNC1(surf->ident);
        FUNC1(surf->flags);
        FUNC1(surf->numFrames);
        FUNC1(surf->numShaders);
        FUNC1(surf->numTriangles);
        FUNC1(surf->ofsTriangles);
        FUNC1(surf->numVerts);
        FUNC1(surf->ofsShaders);
        FUNC1(surf->ofsSt);
        FUNC1(surf->ofsXyzNormals);
        FUNC1(surf->ofsEnd);
		
		if ( surf->numVerts > SHADER_MAX_VERTEXES ) {
			FUNC0 ("R_LoadMD3: %s has more than %i verts on a surface (%i)",
				mod_name, SHADER_MAX_VERTEXES, surf->numVerts );
		}
		if ( surf->numTriangles*3 > SHADER_MAX_INDEXES ) {
			FUNC0 ("R_LoadMD3: %s has more than %i triangles on a surface (%i)",
				mod_name, SHADER_MAX_INDEXES / 3, surf->numTriangles );
		}

		// swap all the triangles
		tri = (md3Triangle_t *) ( (byte *)surf + surf->ofsTriangles );
		for ( j = 0 ; j < surf->numTriangles ; j++, tri++ ) {
			FUNC1(tri->indexes[0]);
			FUNC1(tri->indexes[1]);
			FUNC1(tri->indexes[2]);
		}

		// swap all the ST
        st = (md3St_t *) ( (byte *)surf + surf->ofsSt );
        for ( j = 0 ; j < surf->numVerts ; j++, st++ ) {
            st->st[0] = FUNC2( st->st[0] );
            st->st[1] = FUNC2( st->st[1] );
        }

		// swap all the XyzNormals
        xyz = (md3XyzNormal_t *) ( (byte *)surf + surf->ofsXyzNormals );
        for ( j = 0 ; j < surf->numVerts * surf->numFrames ; j++, xyz++ ) 
		{
            xyz->xyz[0] = FUNC4( xyz->xyz[0] );
            xyz->xyz[1] = FUNC4( xyz->xyz[1] );
            xyz->xyz[2] = FUNC4( xyz->xyz[2] );

            xyz->normal = FUNC4( xyz->normal );
        }


		// find the next surface
		surf = (md3Surface_t *)( (byte *)surf + surf->ofsEnd );
	}

	return md3;
}