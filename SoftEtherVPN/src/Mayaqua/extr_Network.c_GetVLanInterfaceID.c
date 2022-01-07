
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int UnixGetVLanInterfaceID (char*) ;
 int Win32GetVLanInterfaceID (char*) ;

UINT GetVLanInterfaceID(char *tag_name)
{
 UINT ret = 0;



 ret = UnixGetVLanInterfaceID(tag_name);

 return ret;
}
