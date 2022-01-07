
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int Format (char*,int ,char*,int ,int ,int ,int ,int ,int ) ;

void MacToStr(char *str, UINT size, UCHAR *mac_address)
{

 if (str == ((void*)0) || mac_address == ((void*)0))
 {
  return;
 }

 Format(str, size, "%02X-%02X-%02X-%02X-%02X-%02X",
  mac_address[0],
  mac_address[1],
  mac_address[2],
  mac_address[3],
  mac_address[4],
  mac_address[5]);
}
