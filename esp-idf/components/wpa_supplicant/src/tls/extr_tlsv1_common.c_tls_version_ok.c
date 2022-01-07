
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ TLS_VERSION_1 ;
 scalar_t__ TLS_VERSION_1_1 ;
 scalar_t__ TLS_VERSION_1_2 ;

int tls_version_ok(u16 ver)
{
 if (ver == TLS_VERSION_1)
  return 1;
 return 0;
}
