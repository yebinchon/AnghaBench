
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int Free (char*) ;
 int FreeToken (TYPE_1__*) ;
 scalar_t__ INFINITE ;
 int MAX_PATH ;
 scalar_t__ ParseHostPort (char*,char**,scalar_t__*,int ) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,scalar_t__,char*) ;
 int Trim (char*) ;

bool GetProxyServerNameAndPortFromIeProxyRegStr(char *name, UINT name_size, UINT *port, char *str, char *server_type)
{
 return 1;

}
