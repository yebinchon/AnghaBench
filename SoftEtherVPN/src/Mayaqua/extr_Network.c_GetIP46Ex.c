
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 scalar_t__ GetIP4Ex (int *,char*,int ,int*) ;
 scalar_t__ GetIP6Ex (int *,char*,int ,int*) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 scalar_t__ IsZeroIp (int *) ;
 int ZeroIP4 (int *) ;
 int ZeroIP6 (int *) ;

bool GetIP46Ex(IP *ip4, IP *ip6, char *hostname, UINT timeout, bool *cancel)
{
 IP a, b;
 bool ok_a, ok_b;

 if (ip4 == ((void*)0) || ip6 == ((void*)0) || hostname == ((void*)0))
 {
  return 0;
 }

 ZeroIP4(ip4);
 ZeroIP6(ip6);

 ok_a = ok_b = 0;

 if (GetIP6Ex(&a, hostname, timeout, cancel))
 {
  ok_a = 1;
 }

 if (GetIP4Ex(&b, hostname, timeout, cancel))
 {
  ok_b = 1;
 }

 if (ok_a)
 {
  if (IsIP4(&a))
  {
   Copy(ip4, &a, sizeof(IP));
  }
 }
 if (ok_b)
 {
  if (IsIP4(&b))
  {
   Copy(ip4, &b, sizeof(IP));
  }

  if (IsIP6(&b))
  {
   Copy(ip6, &b, sizeof(IP));
  }
 }
 if (ok_a)
 {
  if (IsIP6(&a))
  {
   Copy(ip6, &a, sizeof(IP));
  }
 }

 if (IsZeroIp(ip4) && IsZeroIp(ip6))
 {
  return 0;
 }

 return 1;
}
