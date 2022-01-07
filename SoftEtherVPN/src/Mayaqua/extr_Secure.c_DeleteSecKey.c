
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SECURE ;


 int DeleteSecObjectByName (int *,char*,int ) ;
 int SEC_K ;

bool DeleteSecKey(SECURE *sec, char *name)
{
 return DeleteSecObjectByName(sec, name, SEC_K);
}
