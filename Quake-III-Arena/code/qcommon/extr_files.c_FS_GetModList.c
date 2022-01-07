
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef scalar_t__ fileHandle_t ;
typedef int descPath ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {char* string; } ;
struct TYPE_4__ {char* string; } ;
typedef int FILE ;


 int Com_Memset (char*,int ,int) ;
 char* FS_BuildOSPath (char*,char*,char*) ;
 int FS_FCloseFile (scalar_t__) ;
 int * FS_FileForHandle (scalar_t__) ;
 int FS_SV_FOpenFileRead (char*,scalar_t__*) ;
 int MAX_OSPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 scalar_t__ Q_stricmpn (char*,char*,int) ;
 char** Sys_ConcatenateFileLists (char**,char**,char**) ;
 int Sys_CountFileList (char**) ;
 int Sys_FreeFileList (char**) ;
 char** Sys_ListFiles (char*,char*,int *,int*,scalar_t__) ;
 int fread (char*,int,int,int *) ;
 TYPE_3__* fs_basepath ;
 TYPE_2__* fs_cdpath ;
 TYPE_1__* fs_homepath ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int FS_GetModList( char *listbuf, int bufsize ) {
  int nMods, i, j, nTotal, nLen, nPaks, nPotential, nDescLen;
  char **pFiles = ((void*)0);
  char **pPaks = ((void*)0);
  char *name, *path;
  char descPath[MAX_OSPATH];
  fileHandle_t descHandle;

  int dummy;
  char **pFiles0 = ((void*)0);
  char **pFiles1 = ((void*)0);
  char **pFiles2 = ((void*)0);
  qboolean bDrop = qfalse;

  *listbuf = 0;
  nMods = nPotential = nTotal = 0;

  pFiles0 = Sys_ListFiles( fs_homepath->string, ((void*)0), ((void*)0), &dummy, qtrue );
  pFiles1 = Sys_ListFiles( fs_basepath->string, ((void*)0), ((void*)0), &dummy, qtrue );
  pFiles2 = Sys_ListFiles( fs_cdpath->string, ((void*)0), ((void*)0), &dummy, qtrue );


  pFiles = Sys_ConcatenateFileLists( pFiles0, pFiles1, pFiles2 );
  nPotential = Sys_CountFileList(pFiles);

  for ( i = 0 ; i < nPotential ; i++ ) {
    name = pFiles[i];


    if (i!=0) {
      bDrop = qfalse;
      for(j=0; j<i; j++)
      {
        if (Q_stricmp(pFiles[j],name)==0) {

          bDrop = qtrue;
          break;
        }
      }
    }
    if (bDrop) {
      continue;
    }

    if (Q_stricmp(name, "baseq3") && Q_stricmpn(name, ".", 1)) {





      path = FS_BuildOSPath( fs_basepath->string, name, "" );
      nPaks = 0;
      pPaks = Sys_ListFiles(path, ".pk3", ((void*)0), &nPaks, qfalse);
      Sys_FreeFileList( pPaks );


      if( nPaks <= 0 ) {
        path = FS_BuildOSPath( fs_cdpath->string, name, "" );
        nPaks = 0;
        pPaks = Sys_ListFiles( path, ".pk3", ((void*)0), &nPaks, qfalse );
        Sys_FreeFileList( pPaks );
      }


      if ( nPaks <= 0 )
      {
        path = FS_BuildOSPath( fs_homepath->string, name, "" );
        nPaks = 0;
        pPaks = Sys_ListFiles( path, ".pk3", ((void*)0), &nPaks, qfalse );
        Sys_FreeFileList( pPaks );
      }

      if (nPaks > 0) {
        nLen = strlen(name) + 1;


        descPath[0] = '\0';
        strcpy(descPath, name);
        strcat(descPath, "/description.txt");
        nDescLen = FS_SV_FOpenFileRead( descPath, &descHandle );
        if ( nDescLen > 0 && descHandle) {
          FILE *file;
          file = FS_FileForHandle(descHandle);
          Com_Memset( descPath, 0, sizeof( descPath ) );
          nDescLen = fread(descPath, 1, 48, file);
          if (nDescLen >= 0) {
            descPath[nDescLen] = '\0';
          }
          FS_FCloseFile(descHandle);
        } else {
          strcpy(descPath, name);
        }
        nDescLen = strlen(descPath) + 1;

        if (nTotal + nLen + 1 + nDescLen + 1 < bufsize) {
          strcpy(listbuf, name);
          listbuf += nLen;
          strcpy(listbuf, descPath);
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
  Sys_FreeFileList( pFiles );

  return nMods;
}
