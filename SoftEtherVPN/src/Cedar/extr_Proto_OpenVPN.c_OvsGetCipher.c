
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lowercase_name ;
typedef int CIPHER ;


 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int * NewCipher (char*) ;
 char* OPENVPN_DEFAULT_CIPHER ;
 int StrCpy (char*,int,char*) ;
 int StrLower (char*) ;

CIPHER *OvsGetCipher(char *name)
{
 CIPHER *c = ((void*)0);



 char lowercase_name[MAX_SIZE];
 StrCpy(lowercase_name, sizeof(lowercase_name), name);
 StrLower(lowercase_name);

 if (IsEmptyStr(lowercase_name) == 0)
 {
  c = NewCipher(lowercase_name);
 }

 if (c == ((void*)0))
 {
  c = NewCipher(OPENVPN_DEFAULT_CIPHER);
 }

 return c;
}
