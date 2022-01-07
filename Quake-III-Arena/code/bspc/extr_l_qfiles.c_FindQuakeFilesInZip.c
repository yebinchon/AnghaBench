
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int unz_s ;
struct TYPE_9__ {int number_entry; } ;
typedef TYPE_1__ unz_global_info ;
struct TYPE_10__ {int uncompressed_size; } ;
typedef TYPE_2__ unz_file_info ;
typedef scalar_t__ unzFile ;
struct TYPE_11__ {int zipfile; struct TYPE_11__* next; int type; int length; scalar_t__ offset; int zipinfo; int origname; int filename; int pakfile; } ;
typedef TYPE_3__ quakefile_t ;
typedef int filename_inzip ;


 int ConvertPath (char*) ;
 int Error (char*) ;
 scalar_t__ FileFilter (char*,char*,int) ;
 int MAX_PATH ;
 int QuakeFileType (char*) ;
 int UNZ_OK ;
 TYPE_3__* malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int strcpy (int ,char*) ;
 int unzClose (scalar_t__) ;
 int unzGetCurrentFileInfo (scalar_t__,TYPE_2__*,char*,int,int *,int ,int *,int ) ;
 int unzGetGlobalInfo (scalar_t__,TYPE_1__*) ;
 int unzGoToFirstFile (scalar_t__) ;
 int unzGoToNextFile (scalar_t__) ;
 scalar_t__ unzOpen (char*) ;

quakefile_t *FindQuakeFilesInZip(char *zipfile, char *filter)
{
 unzFile uf;
 int err;
 unz_global_info gi;
 char filename_inzip[MAX_PATH];
 unz_file_info file_info;
 int i;
 quakefile_t *qfiles, *lastqf, *qf;

 uf = unzOpen(zipfile);
 err = unzGetGlobalInfo(uf, &gi);

 if (err != UNZ_OK) return ((void*)0);

 unzGoToFirstFile(uf);

 qfiles = ((void*)0);
 lastqf = ((void*)0);
 for (i = 0; i < gi.number_entry; i++)
 {
  err = unzGetCurrentFileInfo(uf, &file_info, filename_inzip, sizeof(filename_inzip), ((void*)0),0,((void*)0),0);
  if (err != UNZ_OK) break;

  ConvertPath(filename_inzip);
  if (FileFilter(filter, filename_inzip, 0))
  {
   qf = malloc(sizeof(quakefile_t));
   if (!qf) Error("out of memory");
   memset(qf, 0, sizeof(quakefile_t));
   strcpy(qf->pakfile, zipfile);
   strcpy(qf->filename, zipfile);
   strcpy(qf->origname, filename_inzip);
   qf->zipfile = 1;

   memcpy(&qf->zipinfo, (unz_s*)uf, sizeof(unz_s));
   qf->offset = 0;
   qf->length = file_info.uncompressed_size;
   qf->type = QuakeFileType(filename_inzip);

   qf->next = ((void*)0);
   if (lastqf) lastqf->next = qf;
   else qfiles = qf;
   lastqf = qf;
  }
  unzGoToNextFile(uf);
 }

 unzClose(uf);

 return qfiles;
}
