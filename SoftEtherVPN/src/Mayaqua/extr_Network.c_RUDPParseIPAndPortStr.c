
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int ipstr ;
typedef size_t UINT ;
typedef int IP ;


 int Copy (char*,void*,int ) ;
 size_t INFINITE ;
 int MAX_SIZE ;
 int MIN (size_t,int) ;
 size_t SearchStrEx (char*,char*,int ,int) ;
 int StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrToIP (int *,char*) ;
 size_t ToInt (char*) ;
 int Zero (char*,int) ;

bool RUDPParseIPAndPortStr(void *data, UINT data_size, IP *ip, UINT *port)
{
 char tmp[MAX_SIZE];
 UINT i;
 char ipstr[MAX_SIZE];
 char *portstr;

 if (data == ((void*)0) || ip == ((void*)0) || port == ((void*)0))
 {
  return 0;
 }

 Zero(tmp, sizeof(tmp));

 Copy(tmp, data, MIN(data_size, sizeof(tmp) - 1));

 if (StartWith(tmp, "IP=") == 0)
 {
  return 0;
 }

 i = SearchStrEx(tmp, "#", 0, 1);
 if (i != INFINITE)
 {
  tmp[i] = 0;
 }

 StrCpy(ipstr, sizeof(ipstr), tmp + 3);

 i = SearchStrEx(ipstr, ",PORT=", 0, 1);
 if (i == INFINITE)
 {
  return 0;
 }

 ipstr[i] = 0;
 portstr = ipstr + i + 6;

 StrToIP(ip, ipstr);
 *port = ToInt(portstr);

 return 1;
}
