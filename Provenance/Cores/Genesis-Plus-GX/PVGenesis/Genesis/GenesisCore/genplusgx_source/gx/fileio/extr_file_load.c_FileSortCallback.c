
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; scalar_t__ flags; } ;
typedef TYPE_1__ FILEENTRIES ;


 scalar_t__ strcmp (char*,char*) ;
 int stricmp (char*,char*) ;

__attribute__((used)) static int FileSortCallback(const void *f1, const void *f2)
{

  if(((FILEENTRIES *)f1)->filename[0] == '.' || ((FILEENTRIES *)f2)->filename[0] == '.')
  {
    if(strcmp(((FILEENTRIES *)f1)->filename, ".") == 0) { return -1; }
    if(strcmp(((FILEENTRIES *)f2)->filename, ".") == 0) { return 1; }
    if(strcmp(((FILEENTRIES *)f1)->filename, "..") == 0) { return -1; }
    if(strcmp(((FILEENTRIES *)f2)->filename, "..") == 0) { return 1; }
  }


  if(((FILEENTRIES *)f1)->flags && !((FILEENTRIES *)f2)->flags) return -1;
  if(!((FILEENTRIES *)f1)->flags && ((FILEENTRIES *)f2)->flags) return 1;

  return stricmp(((FILEENTRIES *)f1)->filename, ((FILEENTRIES *)f2)->filename);
}
