
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ data; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ ASN1_TIME ;


 int LocalToSystem (int *,int *) ;
 int StrToSystem (int *,char*) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;

bool Asn1TimeToSystem(SYSTEMTIME *s, void *asn1_time)
{
 ASN1_TIME *t;

 if (s == ((void*)0) || asn1_time == ((void*)0))
 {
  return 0;
 }

 t = (ASN1_TIME *)asn1_time;
 if (StrToSystem(s, (char *)t->data) == 0)
 {
  return 0;
 }

 if (t->type == V_ASN1_GENERALIZEDTIME)
 {
  LocalToSystem(s, s);
 }

 return 1;
}
