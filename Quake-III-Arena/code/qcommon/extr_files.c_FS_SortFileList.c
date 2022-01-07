
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Memcpy (char**,char**,int) ;
 scalar_t__ FS_PathCmp (char*,char*) ;
 int Z_Free (char**) ;
 char** Z_Malloc (int) ;

void FS_SortFileList(char **filelist, int numfiles) {
 int i, j, k, numsortedfiles;
 char **sortedlist;

 sortedlist = Z_Malloc( ( numfiles + 1 ) * sizeof( *sortedlist ) );
 sortedlist[0] = ((void*)0);
 numsortedfiles = 0;
 for (i = 0; i < numfiles; i++) {
  for (j = 0; j < numsortedfiles; j++) {
   if (FS_PathCmp(filelist[i], sortedlist[j]) < 0) {
    break;
   }
  }
  for (k = numsortedfiles; k > j; k--) {
   sortedlist[k] = sortedlist[k-1];
  }
  sortedlist[j] = filelist[i];
  numsortedfiles++;
 }
 Com_Memcpy(filelist, sortedlist, numfiles * sizeof( *filelist ) );
 Z_Free(sortedlist);
}
