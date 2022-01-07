
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
typedef TYPE_1__ NAME ;


 void* CopyUniStr (int *) ;
 int UniIsEmptyStr (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

NAME *NewName(wchar_t *common_name, wchar_t *organization, wchar_t *unit,
     wchar_t *country, wchar_t *state, wchar_t *local)
{
 NAME *nm = ZeroMalloc(sizeof(NAME));

 if (UniIsEmptyStr(common_name) == 0)
 {
  nm->CommonName = CopyUniStr(common_name);
 }

 if (UniIsEmptyStr(organization) == 0)
 {
  nm->Organization = CopyUniStr(organization);
 }

 if (UniIsEmptyStr(unit) == 0)
 {
  nm->Unit = CopyUniStr(unit);
 }

 if (UniIsEmptyStr(country) == 0)
 {
  nm->Country = CopyUniStr(country);
 }

 if (UniIsEmptyStr(state) == 0)
 {
  nm->State = CopyUniStr(state);
 }

 if (UniIsEmptyStr(local) == 0)
 {
  nm->Local = CopyUniStr(local);
 }

 return nm;
}
