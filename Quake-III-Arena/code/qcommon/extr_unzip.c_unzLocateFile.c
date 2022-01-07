
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pos_in_central_dir; void* num_file; int current_file_ok; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;
typedef void* uLong ;
typedef int szCurrentFileName ;


 int UNZ_END_OF_LIST_OF_FILE ;
 scalar_t__ UNZ_MAXFILENAMEINZIP ;
 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ strlen (char const*) ;
 int unzGetCurrentFileInfo (int *,int *,char*,int,int *,int ,int *,int ) ;
 int unzGoToFirstFile (int *) ;
 int unzGoToNextFile (int *) ;
 scalar_t__ unzStringFileNameCompare (char*,char const*,int) ;

extern int unzLocateFile (unzFile file, const char *szFileName, int iCaseSensitivity)
{
 unz_s* s;
 int err;


 uLong num_fileSaved;
 uLong pos_in_central_dirSaved;


 if (file==((void*)0))
  return UNZ_PARAMERROR;

    if (strlen(szFileName)>=UNZ_MAXFILENAMEINZIP)
        return UNZ_PARAMERROR;

 s=(unz_s*)file;
 if (!s->current_file_ok)
  return UNZ_END_OF_LIST_OF_FILE;

 num_fileSaved = s->num_file;
 pos_in_central_dirSaved = s->pos_in_central_dir;

 err = unzGoToFirstFile(file);

 while (err == UNZ_OK)
 {
  char szCurrentFileName[UNZ_MAXFILENAMEINZIP+1];
  unzGetCurrentFileInfo(file,((void*)0),
        szCurrentFileName,sizeof(szCurrentFileName)-1,
        ((void*)0),0,((void*)0),0);
  if (unzStringFileNameCompare(szCurrentFileName,
          szFileName,iCaseSensitivity)==0)
   return UNZ_OK;
  err = unzGoToNextFile(file);
 }

 s->num_file = num_fileSaved ;
 s->pos_in_central_dir = pos_in_central_dirSaved ;
 return err;
}
