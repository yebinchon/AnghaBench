
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int Free (char*) ;
 char* Malloc (size_t) ;
 int StrCpy (char*,int ,char*) ;
 size_t StrLen (char*) ;

void UnescapeStr(char *src)
{
 UINT i, len, wp;
 char *tmp;

 if (src == ((void*)0))
 {
  return;
 }

 len = StrLen(src);
 tmp = Malloc(len + 1);
 wp = 0;
 for (i = 0;i < len;i++)
 {
  if (src[i] == '\\')
  {
   i++;
   switch (src[i])
   {
   case 0:
    goto FINISH;
   case '\\':
    tmp[wp++] = '\\';
    break;
   case ' ':
    tmp[wp++] = ' ';
    break;
   case 'n':
   case 'N':
    tmp[wp++] = '\n';
    break;
   case 'r':
   case 'R':
    tmp[wp++] = '\r';
    break;
   case 't':
   case 'T':
    tmp[wp++] = '\t';
    break;
   }
  }
  else
  {
   tmp[wp++] = src[i];
  }
 }
FINISH:
 tmp[wp++] = 0;
 StrCpy(src, 0, tmp);
 Free(tmp);
}
