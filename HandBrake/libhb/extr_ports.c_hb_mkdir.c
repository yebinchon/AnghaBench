
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int _wmkdir (int *) ;
 int mkdir (char*,int) ;

int hb_mkdir(char * path)
{






    return mkdir(path, 0755);

}
