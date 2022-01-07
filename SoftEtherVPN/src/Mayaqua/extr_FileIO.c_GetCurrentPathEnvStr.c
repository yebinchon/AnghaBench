
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 char* CopyStr (char*) ;
 int GetEnv (char*,char*,int) ;
 int UnixGetCurrentDir (char*,int) ;
 int Win32GetCurrentDir (char*,int) ;

char *GetCurrentPathEnvStr()
{
 char tmp[1024];
 char *tag_name;




 tag_name = "PATH";


 if (GetEnv(tag_name, tmp, sizeof(tmp)) == 0)
 {



  UnixGetCurrentDir(tmp, sizeof(tmp));

 }

 return CopyStr(tmp);
}
