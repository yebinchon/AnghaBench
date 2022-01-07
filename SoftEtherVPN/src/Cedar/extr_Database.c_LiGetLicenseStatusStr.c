
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
 int * _UU (char*) ;

wchar_t *LiGetLicenseStatusStr(UINT i)
{
 wchar_t *ret = _UU("LICENSE_STATUS_OTHERERROR");

 switch (i)
 {
 case 128:
  ret = _UU("LICENSE_STATUS_OK");
  break;

 case 132:
  ret = _UU("LICENSE_STATUS_EXPIRED");
  break;

 case 131:
  ret = _UU("LICENSE_STATUS_ID_DIFF");
  break;

 case 133:
  ret = _UU("LICENSE_STATUS_DUP");
  break;

 case 130:
  ret = _UU("LICENSE_STATUS_INSUFFICIENT");
  break;

 case 135:
  ret = _UU("LICENSE_STATUS_COMPETITION");
  break;

 case 129:
  ret = _UU("LICENSE_STATUS_NONSENSE");
  break;

 case 134:
  ret = _UU("LICENSE_STATUS_CPU");
  break;
 }

 return ret;
}
