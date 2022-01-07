
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int length; int type; int * data; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ ASN1_TIME ;


 int * OPENSSL_malloc (int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int SystemToStr (char*,int,int *) ;
 int V_ASN1_UTCTIME ;

bool SystemToAsn1Time(void *asn1_time, SYSTEMTIME *s)
{
 char tmp[20];
 ASN1_TIME *t;

 if (asn1_time == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }

 if (SystemToStr(tmp, sizeof(tmp), s) == 0)
 {
  return 0;
 }
 t = (ASN1_TIME *)asn1_time;
 if (t->data == ((void*)0) || t->length < sizeof(tmp))
 {
  t->data = OPENSSL_malloc(sizeof(tmp));
 }
 StrCpy((char *)t->data, t->length, tmp);
 t->length = StrLen(tmp);
 t->type = V_ASN1_UTCTIME;

 return 1;
}
