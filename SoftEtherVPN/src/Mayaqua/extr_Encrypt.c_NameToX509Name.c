
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void X509_NAME ;
struct TYPE_3__ {int Local; int State; int Country; int Unit; int Organization; int CommonName; } ;
typedef TYPE_1__ NAME ;


 int AddX509Name (void*,int ,int ) ;
 int NID_commonName ;
 int NID_countryName ;
 int NID_localityName ;
 int NID_organizationName ;
 int NID_organizationalUnitName ;
 int NID_stateOrProvinceName ;
 void* X509_NAME_new () ;

void *NameToX509Name(NAME *nm)
{
 X509_NAME *xn;

 if (nm == ((void*)0))
 {
  return ((void*)0);
 }

 xn = X509_NAME_new();
 if (xn == ((void*)0))
 {
  return ((void*)0);
 }


 AddX509Name(xn, NID_commonName, nm->CommonName);
 AddX509Name(xn, NID_organizationName, nm->Organization);
 AddX509Name(xn, NID_organizationalUnitName, nm->Unit);
 AddX509Name(xn, NID_countryName, nm->Country);
 AddX509Name(xn, NID_stateOrProvinceName, nm->State);
 AddX509Name(xn, NID_localityName, nm->Local);

 return xn;
}
