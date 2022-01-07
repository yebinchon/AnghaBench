
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;




 int * _UU (char*) ;

wchar_t *GetTtcTypeStr(UINT type)
{
 switch (type)
 {
 case 129:
  return _UU("TTC_TYPE_DOWNLOAD");

 case 128:
  return _UU("TTC_TYPE_UPLOAD");

 default:
  return _UU("TTC_TYPE_FULL");
 }
}
