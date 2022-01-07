
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
typedef TYPE_1__ NAME ;


 void* GetUniStrFromX509Name (void*,int ) ;
 int NID_commonName ;
 int NID_countryName ;
 int NID_localityName ;
 int NID_organizationName ;
 int NID_organizationalUnitName ;
 int NID_stateOrProvinceName ;
 TYPE_1__* ZeroMalloc (int) ;

NAME *X509NameToName(void *xn)
{
 NAME *n;

 if (xn == ((void*)0))
 {
  return ((void*)0);
 }

 n = ZeroMalloc(sizeof(NAME));


 n->CommonName = GetUniStrFromX509Name(xn, NID_commonName);
 n->Organization = GetUniStrFromX509Name(xn, NID_organizationName);
 n->Unit = GetUniStrFromX509Name(xn, NID_organizationalUnitName);
 n->Country = GetUniStrFromX509Name(xn, NID_countryName);
 n->State = GetUniStrFromX509Name(xn, NID_stateOrProvinceName);
 n->Local = GetUniStrFromX509Name(xn, NID_localityName);

 return n;
}
