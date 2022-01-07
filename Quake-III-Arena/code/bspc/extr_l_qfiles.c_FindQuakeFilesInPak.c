
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* pakfile; char* filename; char* origname; int zipfile; int offset; int length; struct TYPE_10__* next; int type; } ;
typedef TYPE_1__ quakefile_t ;
struct TYPE_11__ {scalar_t__ ident; int dirofs; int dirlen; char* name; int filepos; int filelen; } ;
typedef TYPE_2__ dsinpackfile_t ;
typedef TYPE_2__ dpackheader_t ;
typedef TYPE_2__ dpackfile_t ;
typedef int FILE ;


 int ConvertPath (char*) ;
 int Error (char*) ;
 scalar_t__ FileFilter (char*,char*,int) ;
 scalar_t__ IDPAKHEADER ;
 int LittleLong (int) ;
 int QuakeFileType (char*) ;
 int SEEK_SET ;
 scalar_t__ SINPAKHEADER ;
 int Warning (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (TYPE_2__*,int,int,int *) ;
 int free (TYPE_2__*) ;
 scalar_t__ fseek (int *,int,int ) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strcpy (char*,char*) ;

quakefile_t *FindQuakeFilesInPak(char *pakfile, char *filter)
{
 FILE *fp;
 dpackheader_t packheader;
 dsinpackfile_t *packfiles;
 dpackfile_t *idpackfiles;
 quakefile_t *qfiles, *lastqf, *qf;
 int numpackdirs, i;

 qfiles = ((void*)0);
 lastqf = ((void*)0);

 fp = fopen(pakfile, "rb");
 if (!fp)
 {
  Warning("can't open pak file %s", pakfile);
  return ((void*)0);
 }

 if ((fread(&packheader, 1, sizeof(dpackheader_t), fp) != sizeof(dpackheader_t))
  || (packheader.ident != IDPAKHEADER && packheader.ident != SINPAKHEADER)
  || (fseek(fp, LittleLong(packheader.dirofs), SEEK_SET))
  )
 {
  fclose(fp);
  Warning("invalid pak file %s", pakfile);
  return ((void*)0);
 }

 if (packheader.ident == IDPAKHEADER)
 {

  numpackdirs = LittleLong(packheader.dirlen) / sizeof(dpackfile_t);
  idpackfiles = (dpackfile_t *) malloc(numpackdirs * sizeof(dpackfile_t));
  if (!idpackfiles) Error("out of memory");

  if (fread(idpackfiles, sizeof(dpackfile_t), numpackdirs, fp) != numpackdirs)
  {
   fclose(fp);
   free(idpackfiles);
   Warning("can't read the Quake pak file dir entries from %s", pakfile);
   return ((void*)0);
  }
  fclose(fp);

  packfiles = (dsinpackfile_t *) malloc(numpackdirs * sizeof(dsinpackfile_t));
  if (!packfiles) Error("out of memory");
  for (i = 0; i < numpackdirs; i++)
  {
   strcpy(packfiles[i].name, idpackfiles[i].name);
   packfiles[i].filepos = LittleLong(idpackfiles[i].filepos);
   packfiles[i].filelen = LittleLong(idpackfiles[i].filelen);
  }
  free(idpackfiles);
 }
 else
 {

  numpackdirs = LittleLong(packheader.dirlen) / sizeof(dsinpackfile_t);
  packfiles = (dsinpackfile_t *) malloc(numpackdirs * sizeof(dsinpackfile_t));
  if (!packfiles) Error("out of memory");

  if (fread(packfiles, sizeof(dsinpackfile_t), numpackdirs, fp) != numpackdirs)
  {
   fclose(fp);
   free(packfiles);
   Warning("can't read the Sin pak file dir entries from %s", pakfile);
   return ((void*)0);
  }
  fclose(fp);
  for (i = 0; i < numpackdirs; i++)
  {
   packfiles[i].filepos = LittleLong(packfiles[i].filepos);
   packfiles[i].filelen = LittleLong(packfiles[i].filelen);
  }
 }

 for (i = 0; i < numpackdirs; i++)
 {
  ConvertPath(packfiles[i].name);
  if (FileFilter(filter, packfiles[i].name, 0))
  {
   qf = malloc(sizeof(quakefile_t));
   if (!qf) Error("out of memory");
   memset(qf, 0, sizeof(quakefile_t));
   strcpy(qf->pakfile, pakfile);
   strcpy(qf->filename, pakfile);
   strcpy(qf->origname, packfiles[i].name);
   qf->zipfile = 0;
   qf->offset = packfiles[i].filepos;
   qf->length = packfiles[i].filelen;
   qf->type = QuakeFileType(packfiles[i].name);

   qf->next = ((void*)0);
   if (lastqf) lastqf->next = qf;
   else qfiles = qf;
   lastqf = qf;
  }
 }
 free(packfiles);
 return qfiles;
}
