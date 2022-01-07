
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HINSTANCE ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 scalar_t__ LoadStringA (int ,int,char*,int) ;
 char* Malloc (int) ;

char *ViLoadStringA(HINSTANCE hInst, UINT id)
{
 UINT tmp_size = 60000;
 char *tmp = Malloc(tmp_size);
 char *ret = ((void*)0);

 if (LoadStringA(hInst, id, tmp, tmp_size) != 0)
 {
  ret = CopyStr(tmp);
 }

 Free(tmp);

 return ret;
}
