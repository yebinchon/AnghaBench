
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 int PACKET_LOG_ALL ;
 int PACKET_LOG_HEADER ;
 int PACKET_LOG_NONE ;
 scalar_t__ StartWith (char*,char*) ;

UINT StrToPacketLogSaveInfoType(char *str)
{
 UINT ret = INFINITE;
 if (str == ((void*)0))
 {
  return INFINITE;
 }

 if (StartWith("none", str) || IsEmptyStr(str))
 {
  ret = PACKET_LOG_NONE;
 }
 else if (StartWith("header", str))
 {
  ret = PACKET_LOG_HEADER;
 }
 else if (StartWith("full", str) || StartWith("all", str))
 {
  ret = PACKET_LOG_ALL;
 }

 return ret;
}
