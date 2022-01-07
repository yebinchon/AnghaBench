
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EXTENDED_KEY_USAGE ;
typedef int ASN1_OBJECT ;


 int * OBJ_nid2obj (int) ;
 int sk_ASN1_OBJECT_push (int *,int *) ;

void AddKeyUsageX509(EXTENDED_KEY_USAGE *ex, int nid)
{
 ASN1_OBJECT *obj;

 if (ex == ((void*)0))
 {
  return;
 }

 obj = OBJ_nid2obj(nid);
 if (obj != ((void*)0))
 {
  sk_ASN1_OBJECT_push(ex, obj);
 }
}
