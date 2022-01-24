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
typedef  scalar_t__ qboolean ;
typedef  scalar_t__ fileHandle_t ;
typedef  int /*<<< orphan*/  descPath ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {char* string; } ;
struct TYPE_4__ {char* string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,scalar_t__*) ; 
 int MAX_OSPATH ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char** FUNC7 (char**,char**,char**) ; 
 int FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 char** FUNC10 (char*,char*,int /*<<< orphan*/ *,int*,scalar_t__) ; 
 int FUNC11 (char*,int,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* fs_basepath ; 
 TYPE_2__* fs_cdpath ; 
 TYPE_1__* fs_homepath ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 

int	FUNC15( char *listbuf, int bufsize ) {
  int		nMods, i, j, nTotal, nLen, nPaks, nPotential, nDescLen;
  char **pFiles = NULL;
  char **pPaks = NULL;
  char *name, *path;
  char descPath[MAX_OSPATH];
  fileHandle_t descHandle;

  int dummy;
  char **pFiles0 = NULL;
  char **pFiles1 = NULL;
  char **pFiles2 = NULL;
  qboolean bDrop = qfalse;

  *listbuf = 0;
  nMods = nPotential = nTotal = 0;

  pFiles0 = FUNC10( fs_homepath->string, NULL, NULL, &dummy, qtrue );
  pFiles1 = FUNC10( fs_basepath->string, NULL, NULL, &dummy, qtrue );
  pFiles2 = FUNC10( fs_cdpath->string, NULL, NULL, &dummy, qtrue );
  // we searched for mods in the three paths
  // it is likely that we have duplicate names now, which we will cleanup below
  pFiles = FUNC7( pFiles0, pFiles1, pFiles2 );
  nPotential = FUNC8(pFiles);

  for ( i = 0 ; i < nPotential ; i++ ) {
    name = pFiles[i];
    // NOTE: cleaner would involve more changes
    // ignore duplicate mod directories
    if (i!=0) {
      bDrop = qfalse;
      for(j=0; j<i; j++)
      {
        if (FUNC5(pFiles[j],name)==0) {
          // this one can be dropped
          bDrop = qtrue;
          break;
        }
      }
    }
    if (bDrop) {
      continue;
    }
    // we drop "baseq3" "." and ".."
    if (FUNC5(name, "baseq3") && FUNC6(name, ".", 1)) {
      // now we need to find some .pk3 files to validate the mod
      // NOTE TTimo: (actually I'm not sure why .. what if it's a mod under developement with no .pk3?)
      // we didn't keep the information when we merged the directory names, as to what OS Path it was found under
      //   so it could be in base path, cd path or home path
      //   we will try each three of them here (yes, it's a bit messy)
      path = FUNC1( fs_basepath->string, name, "" );
      nPaks = 0;
      pPaks = FUNC10(path, ".pk3", NULL, &nPaks, qfalse); 
      FUNC9( pPaks ); // we only use Sys_ListFiles to check wether .pk3 files are present

      /* Try on cd path */
      if( nPaks <= 0 ) {
        path = FUNC1( fs_cdpath->string, name, "" );
        nPaks = 0;
        pPaks = FUNC10( path, ".pk3", NULL, &nPaks, qfalse );
        FUNC9( pPaks );
      }

      /* try on home path */
      if ( nPaks <= 0 )
      {
        path = FUNC1( fs_homepath->string, name, "" );
        nPaks = 0;
        pPaks = FUNC10( path, ".pk3", NULL, &nPaks, qfalse );
        FUNC9( pPaks );
      }

      if (nPaks > 0) {
        nLen = FUNC14(name) + 1;
        // nLen is the length of the mod path
        // we need to see if there is a description available
        descPath[0] = '\0';
        FUNC13(descPath, name);
        FUNC12(descPath, "/description.txt");
        nDescLen = FUNC4( descPath, &descHandle );
        if ( nDescLen > 0 && descHandle) {
          FILE *file;
          file = FUNC3(descHandle);
          FUNC0( descPath, 0, sizeof( descPath ) );
          nDescLen = FUNC11(descPath, 1, 48, file);
          if (nDescLen >= 0) {
            descPath[nDescLen] = '\0';
          }
          FUNC2(descHandle);
        } else {
          FUNC13(descPath, name);
        }
        nDescLen = FUNC14(descPath) + 1;

        if (nTotal + nLen + 1 + nDescLen + 1 < bufsize) {
          FUNC13(listbuf, name);
          listbuf += nLen;
          FUNC13(listbuf, descPath);
          listbuf += nDescLen;
          nTotal += nLen + nDescLen;
          nMods++;
        }
        else {
          break;
        }
      }
    }
  }
  FUNC9( pFiles );

  return nMods;
}