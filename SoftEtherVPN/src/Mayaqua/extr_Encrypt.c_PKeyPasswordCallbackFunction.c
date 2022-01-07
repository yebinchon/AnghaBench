
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * password; } ;
typedef TYPE_1__ CB_PARAM ;


 int StrCpy (char*,int,int *) ;

int PKeyPasswordCallbackFunction(char *buf, int bufsize, int verify, void *param)
{
 CB_PARAM *cb;

 if (buf == ((void*)0) || param == ((void*)0) || bufsize == 0)
 {
  return 0;
 }

 cb = (CB_PARAM *)param;
 if (cb->password == ((void*)0))
 {
  return 0;
 }

 return StrCpy(buf, bufsize, cb->password);
}
