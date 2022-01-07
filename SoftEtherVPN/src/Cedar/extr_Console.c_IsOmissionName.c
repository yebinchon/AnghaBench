
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oname ;


 scalar_t__ EndWith (char*,char*) ;
 int GetOmissionName (char*,int,char*) ;
 scalar_t__ IsAllUpperStr (char*) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ StartWith (char*,char*) ;
 size_t StrLen (char*) ;

bool IsOmissionName(char *input_name, char *real_name)
{
 char oname[128];

 if (input_name == ((void*)0) || real_name == ((void*)0))
 {
  return 0;
 }

 if (IsAllUpperStr(real_name))
 {

  return 0;
 }

 GetOmissionName(oname, sizeof(oname), real_name);

 if (IsEmptyStr(oname))
 {
  return 0;
 }

 if (StartWith(oname, input_name))
 {


  return 1;
 }

 if (StartWith(input_name, oname))
 {



  if (EndWith(real_name, &input_name[StrLen(oname)]))
  {
   return 1;
  }
 }

 return 0;
}
