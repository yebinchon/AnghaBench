
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_5__ {size_t argc; char* args; } ;
typedef TYPE_1__ ciaParam ;
struct TYPE_6__ {int titleID; int version; } ;
typedef int Result ;
typedef int Handle ;
typedef int FS_Archive ;
typedef TYPE_2__ AM_TitleEntry ;


 int AM_GetCiaFileInfo (int ,TYPE_2__*,int ) ;
 int APT_DoApplicationJump (TYPE_1__*,int,int ) ;
 int APT_PrepareToDoApplicationJump (int ,int ,int) ;
 int ARCHIVE_SDMC ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int FSFILE_Close (int ) ;
 int FSUSER_CloseArchive (int ) ;
 int FSUSER_OpenArchive (int *,int ,int ) ;
 int FSUSER_OpenFile (int *,int ,int ,int ,int ) ;
 int FS_OPEN_READ ;
 int MEDIATYPE_SD ;
 int PATH_ASCII ;
 int PATH_EMPTY ;
 scalar_t__ R_FAILED (int ) ;
 scalar_t__ R_SUCCEEDED (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int amExit () ;
 int amInit () ;
 int argvHmac ;
 int errno ;
 int errorAndQuit (char*) ;
 int fsExit () ;
 int fsInit () ;
 int fsMakePath (int ,char const*) ;
 int installCia (int ) ;
 int isCiaInstalled (int ,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

int exec_cia(const char* path, const char** args){
 struct stat sBuff;
 bool fileExists;
 bool inited;

 if(path == ((void*)0) || path[0] == '\0'){
  errno = EINVAL;
  return -1;
 }

 fileExists = stat(path, &sBuff) == 0;
 if(!fileExists){
  errno = ENOENT;
  return -1;
 }
 else if(S_ISDIR(sBuff.st_mode)){
  errno = EINVAL;;
  return -1;
 }

 inited = R_SUCCEEDED(amInit()) && R_SUCCEEDED(fsInit());
 if(inited){
  Result res;
  AM_TitleEntry ciaInfo;
  FS_Archive ciaArchive;
  Handle ciaFile;
  int ciaInstalled;
  ciaParam param;
  int argsLength;


  res = FSUSER_OpenArchive(&ciaArchive, ARCHIVE_SDMC, fsMakePath(PATH_EMPTY, ""));
  if(R_FAILED(res))
   errorAndQuit("Cant open SD FS archive.");

  res = FSUSER_OpenFile(&ciaFile, ciaArchive, fsMakePath(PATH_ASCII, path + 5 ), FS_OPEN_READ, 0);
  if(R_FAILED(res))
   errorAndQuit("Cant open CIA file.");

  res = AM_GetCiaFileInfo(MEDIATYPE_SD, &ciaInfo, ciaFile);
  if(R_FAILED(res))
   errorAndQuit("Cant get CIA file info.");

  ciaInstalled = isCiaInstalled(ciaInfo.titleID, ciaInfo.version);
  if(ciaInstalled == -1){

   errorAndQuit("Could not read title id list.");
  }
  else if(ciaInstalled == 0){

   int error = installCia(ciaFile);
   if(error == -1)
    errorAndQuit("Cant install CIA.");
  }

  FSFILE_Close(ciaFile);
  FSUSER_CloseArchive(ciaArchive);

  param.argc = 0;
  argsLength = 0;
  char* argLocation = param.args;
  while(args[param.argc] != ((void*)0)){
   strcpy(argLocation, args[param.argc]);
   argLocation += strlen(args[param.argc]) + 1;
   argsLength += strlen(args[param.argc]) + 1;
   param.argc++;
  }

  res = APT_PrepareToDoApplicationJump(0, ciaInfo.titleID, 0x1);
  if(R_FAILED(res))
   errorAndQuit("CIA cant run, cant prepare.");

  res = APT_DoApplicationJump(&param, sizeof(param.argc) + argsLength, argvHmac);
  if(R_FAILED(res))
   errorAndQuit("CIA cant run, cant jump.");


  while(1);
 }


 amExit();
 fsExit();
 errno = ENOTSUP;
 return -1;
}
