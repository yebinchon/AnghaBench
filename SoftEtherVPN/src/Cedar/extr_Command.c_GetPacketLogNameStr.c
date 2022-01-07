
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int Format (char*,int,char*,int ) ;
 int * _UU (char*) ;

wchar_t *GetPacketLogNameStr(UINT i)
{
 char tmp[64];

 Format(tmp, sizeof(tmp), "CMD_Log_%u", i);

 return _UU(tmp);
}
