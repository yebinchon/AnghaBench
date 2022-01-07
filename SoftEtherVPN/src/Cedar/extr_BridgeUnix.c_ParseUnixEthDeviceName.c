
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef size_t UINT ;


 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int StrCpy (char*,size_t,char*) ;
 int StrLen (char*) ;
 int stat (char*,struct stat*) ;

bool ParseUnixEthDeviceName(char *dst_devname, UINT dst_devname_size, char *src_name)
{
 UINT len, i;
 struct stat s;
 int err;
 char *device_path;
 int device_pathlen;


 if (dst_devname == ((void*)0) || src_name == ((void*)0))
 {
  return 0;
 }


 if (IsEmptyStr(src_name))
 {
  return 0;
 }


 err = stat("/dev/net", &s);
 if (err != -1 && S_ISDIR(s.st_mode))
 {
  device_path = "/dev/net/";
 }
 else
 {
  device_path = "/dev/";
 }

 device_pathlen = StrLen(device_path);


 if (src_name[i] < '0' || '9' < src_name[i])
 {
  if (src_name[i + 1] == 0)
  {
   return 0;
  }
 }

 StrCpy(dst_devname, dst_devname_size, device_path);
 StrCpy(dst_devname + device_pathlen, dst_devname_size - device_pathlen, src_name);
 dst_devname[device_pathlen + len] = 0;

 return 1;
}
