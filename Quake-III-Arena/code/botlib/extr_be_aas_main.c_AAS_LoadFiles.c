
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int filename; int mapname; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,char*) ;} ;


 int AAS_LoadAASFile (char*) ;
 int AAS_LoadBSPFile () ;
 int AAS_ResetEntityLinks () ;
 int BLERR_NOERROR ;
 int Com_sprintf (char*,int,char*,char const*) ;
 int MAX_PATH ;
 int PRT_MESSAGE ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int strcpy (int ,char const*) ;
 int strncpy (int ,char*,int) ;
 int stub1 (int ,char*,char*) ;

int AAS_LoadFiles(const char *mapname)
{
 int errnum;
 char aasfile[MAX_PATH];


 strcpy(aasworld.mapname, mapname);



 AAS_ResetEntityLinks();

 AAS_LoadBSPFile();


 Com_sprintf(aasfile, MAX_PATH, "maps/%s.aas", mapname);
 errnum = AAS_LoadAASFile(aasfile);
 if (errnum != BLERR_NOERROR)
  return errnum;

 botimport.Print(PRT_MESSAGE, "loaded %s\n", aasfile);
 strncpy(aasworld.filename, aasfile, MAX_PATH);
 return BLERR_NOERROR;
}
