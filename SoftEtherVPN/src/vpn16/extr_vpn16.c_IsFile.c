
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HFILE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ HFILE_ERROR ;
 int OF_READ ;
 int TRUE ;
 int _lclose (scalar_t__) ;
 scalar_t__ _lopen (char*,int ) ;

BOOL IsFile(char *name)
{
 HFILE h;
 if (name == ((void*)0))
 {
  return FALSE;
 }

 h = _lopen(name, OF_READ);
 if (h == HFILE_ERROR)
 {
  return FALSE;
 }
 _lclose(h);

 return TRUE;
}
