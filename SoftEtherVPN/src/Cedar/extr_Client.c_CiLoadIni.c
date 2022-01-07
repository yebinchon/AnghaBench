
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;
typedef int BUF ;


 int CLIENT_CUSTOM_INI_FILENAME ;
 int FreeBuf (int *) ;
 int * ReadDump (int ) ;
 int * ReadIni (int *) ;

LIST *CiLoadIni()
{
 BUF *b = ReadDump(CLIENT_CUSTOM_INI_FILENAME);
 LIST *ini;
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 ini = ReadIni(b);

 FreeBuf(b);

 return ini;

}
