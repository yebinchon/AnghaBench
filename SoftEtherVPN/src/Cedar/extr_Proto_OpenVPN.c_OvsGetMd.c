
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD ;


 int IsEmptyStr (char*) ;
 int * NewMd (char*) ;
 char* OPENVPN_DEFAULT_MD ;

MD *OvsGetMd(char *name)
{
 MD *m = ((void*)0);

 if (IsEmptyStr(name) == 0)
 {
  m = NewMd(name);
 }

 if (m == ((void*)0))
 {
  m = NewMd(OPENVPN_DEFAULT_MD);
 }

 return m;
}
