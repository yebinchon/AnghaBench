
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int UnixGetDefaultDns (int *) ;
 int Win32GetDefaultDns (int *,int *,int ) ;

bool GetDefaultDns(IP *ip)
{



 return UnixGetDefaultDns(ip);

}
