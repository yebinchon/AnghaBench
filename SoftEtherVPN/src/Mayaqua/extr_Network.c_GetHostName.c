
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int THREAD ;
typedef int IP ;


 int AddHostCache (int *,char*) ;
 int Copy (int *,int *,int) ;
 int GetHostCache (char*,int ,int *) ;
 int GetHostNameThread ;
 int GetNetBiosName (char*,int ,int *) ;
 int IsEmptyStr (char*) ;
 scalar_t__ IsIP4 (int *) ;
 int * NewThread (int ,int *) ;
 int ReleaseThread (int *) ;
 int StrCpy (char*,int ,char*) ;
 int TIMEOUT_HOSTNAME ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;
 int * ZeroMalloc (int) ;

bool GetHostName(char *hostname, UINT size, IP *ip)
{
 THREAD *t;
 IP *p_ip;
 bool ret;

 if (hostname == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 if (GetHostCache(hostname, size, ip))
 {
  if (IsEmptyStr(hostname) == 0)
  {
   return 1;
  }
  else
  {
   return 0;
  }
 }

 p_ip = ZeroMalloc(sizeof(IP));
 Copy(p_ip, ip, sizeof(IP));

 t = NewThread(GetHostNameThread, p_ip);

 WaitThreadInit(t);

 WaitThread(t, TIMEOUT_HOSTNAME);

 ReleaseThread(t);

 ret = GetHostCache(hostname, size, ip);
 if (ret == 0)
 {
  if (IsIP4(ip))
  {
   ret = GetNetBiosName(hostname, size, ip);
   if (ret)
   {
    AddHostCache(ip, hostname);
   }
  }
 }
 else
 {
  if (IsEmptyStr(hostname))
  {
   ret = 0;
  }
 }
 if (ret == 0)
 {
  AddHostCache(ip, "");
  StrCpy(hostname, size, "");
 }

 return ret;
}
