
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FS_FreeFileList (char**) ;
 int FS_GetModList (char*,int) ;
 char** FS_ListFiles (char const*,char const*,int*) ;
 scalar_t__ Q_stricmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int FS_GetFileList( const char *path, const char *extension, char *listbuf, int bufsize ) {
 int nFiles, i, nTotal, nLen;
 char **pFiles = ((void*)0);

 *listbuf = 0;
 nFiles = 0;
 nTotal = 0;

 if (Q_stricmp(path, "$modlist") == 0) {
  return FS_GetModList(listbuf, bufsize);
 }

 pFiles = FS_ListFiles(path, extension, &nFiles);

 for (i =0; i < nFiles; i++) {
  nLen = strlen(pFiles[i]) + 1;
  if (nTotal + nLen + 1 < bufsize) {
   strcpy(listbuf, pFiles[i]);
   listbuf += nLen;
   nTotal += nLen;
  }
  else {
   nFiles = i;
   break;
  }
 }

 FS_FreeFileList(pFiles);

 return nFiles;
}
