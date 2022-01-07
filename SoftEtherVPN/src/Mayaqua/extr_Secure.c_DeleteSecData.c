
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Error; } ;
typedef TYPE_1__ SECURE ;


 int DeleteSecObjectByName (TYPE_1__*,char*,int ) ;
 int SEC_DATA ;
 int SEC_ERROR_BAD_PARAMETER ;

bool DeleteSecData(SECURE *sec, char *name)
{

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (name == ((void*)0))
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return 0;
 }

 return DeleteSecObjectByName(sec, name, SEC_DATA);
}
