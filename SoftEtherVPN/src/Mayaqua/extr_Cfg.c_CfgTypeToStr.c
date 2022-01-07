
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;







 char* TAG_BOOL ;
 char* TAG_BYTE ;
 char* TAG_INT ;
 char* TAG_INT64 ;
 char* TAG_STRING ;

char *CfgTypeToStr(UINT type)
{
 switch (type)
 {
 case 130:
  return TAG_INT;
 case 129:
  return TAG_INT64;
 case 131:
  return TAG_BYTE;
 case 128:
  return TAG_STRING;
 case 132:
  return TAG_BOOL;
 }
 return ((void*)0);
}
