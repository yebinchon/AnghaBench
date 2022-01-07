
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct _stat {int dummy; } ;
struct TYPE_13__ {char* pakfile; char* filename; char* origname; struct TYPE_13__* next; int type; scalar_t__ length; scalar_t__ offset; } ;
typedef TYPE_1__ quakefile_t ;
struct TYPE_14__ {int gl_pathc; char** gl_pathv; } ;
typedef TYPE_2__ glob_t ;
struct TYPE_15__ {char* cFileName; } ;
typedef TYPE_3__ WIN32_FIND_DATA ;
typedef scalar_t__ HWND ;


 int AppendPathSeperator (char*,int) ;
 int Error (char*) ;
 scalar_t__ FindFirstFile (char*,TYPE_3__*) ;
 int FindNextFile (scalar_t__,TYPE_3__*) ;
 TYPE_1__* FindQuakeFilesInPak (char*,char*) ;
 TYPE_1__* FindQuakeFilesInZip (char*,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int QuakeFileType (char*) ;
 int S_IFDIR ;
 char* StringContains (char*,char*,int) ;
 int _MAX_PATH ;
 int _splitpath (char*,char*,char*,int *,int *) ;
 int _stat (char*,struct stat*) ;
 int glob (char*,int ,int *,TYPE_2__*) ;
 int globfree (TYPE_2__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

quakefile_t *FindQuakeFilesWithPakFilter(char *pakfilter, char *filter)
{





 glob_t globbuf;
 struct stat statbuf;
 int j;

 quakefile_t *qfiles, *lastqf, *qf;
 char pakfile[_MAX_PATH], filename[_MAX_PATH], *str;
 int done;

 qfiles = ((void*)0);
 lastqf = ((void*)0);
 if (pakfilter && strlen(pakfilter))
 {
  glob(pakfilter, 0, ((void*)0), &globbuf);
  for (j = 0; j < globbuf.gl_pathc; j++)
  {
   strcpy(pakfile, globbuf.gl_pathv[j]);
   stat(pakfile, &statbuf);


   if (statbuf.st_mode & S_IFDIR)
   {
    strcpy(filename, pakfilter);
    AppendPathSeperator(filename, _MAX_PATH);
    strcat(filename, filter);
    qf = FindQuakeFilesWithPakFilter(((void*)0), filename);
    if (lastqf) lastqf->next = qf;
    else qfiles = qf;
    lastqf = qf;
    while(lastqf->next) lastqf = lastqf->next;
   }
   else
   {



    str = StringContains(pakfile, ".pk3", 1);

    if (str && str == pakfile + strlen(pakfile) - strlen(".pk3"))
    {
     qf = FindQuakeFilesInZip(pakfile, filter);
    }
    else
    {
     qf = FindQuakeFilesInPak(pakfile, filter);
    }

    if (qf)
    {
     if (lastqf) lastqf->next = qf;
     else qfiles = qf;
     lastqf = qf;
     while(lastqf->next) lastqf = lastqf->next;
    }
   }






  }
  globfree(&globbuf);

 }
 else
 {
  glob(filter, 0, ((void*)0), &globbuf);
  for (j = 0; j < globbuf.gl_pathc; j++)
  {
   strcpy(filename, globbuf.gl_pathv[j]);


   qf = malloc(sizeof(quakefile_t));
   if (!qf) Error("out of memory");
   memset(qf, 0, sizeof(quakefile_t));
   strcpy(qf->pakfile, "");
   strcpy(qf->filename, filename);
   strcpy(qf->origname, filename);
   qf->offset = 0;
   qf->length = 0;
   qf->type = QuakeFileType(filename);

   qf->next = ((void*)0);
   if (lastqf) lastqf->next = qf;
   else qfiles = qf;
   lastqf = qf;





  }
  globfree(&globbuf);

 }
 return qfiles;
}
