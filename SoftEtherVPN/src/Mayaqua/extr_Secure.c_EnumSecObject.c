
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int priv ;
typedef int objects ;
typedef int obj_class ;
typedef int label ;
typedef int get ;
typedef int dummy ;
typedef int b_true ;
typedef int a ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int SessionCreated; int * EnumCache; int SessionId; TYPE_1__* Api; void* Error; } ;
struct TYPE_8__ {int Private; int Name; scalar_t__ Object; scalar_t__ Type; } ;
struct TYPE_7__ {scalar_t__ (* C_FindObjectsInit ) (int ,char*,int) ;scalar_t__ (* C_FindObjects ) (int ,scalar_t__*,int,scalar_t__*) ;scalar_t__ (* C_GetAttributeValue ) (int ,scalar_t__,char*,int) ;int (* C_FindObjectsFinal ) (int ) ;} ;
typedef TYPE_2__ SEC_OBJ ;
typedef TYPE_3__ SECURE ;
typedef int LIST ;
typedef int CK_BBOOL ;
typedef char CK_ATTRIBUTE ;


 int Add (int *,TYPE_2__*) ;
 int CKA_CLASS ;
 int CKA_LABEL ;
 int CKA_PRIVATE ;
 int CKA_TOKEN ;




 scalar_t__ CKR_OK ;
 int * CloneEnumSecObject (int *) ;
 int CopyStr (char*) ;
 int EnSafeStr (char*,char) ;
 scalar_t__ INFINITE ;
 int MAX_OBJ ;
 int MAX_SIZE ;
 int * NewListFast (int *) ;
 scalar_t__ SEC_DATA ;
 void* SEC_ERROR_HARDWARE_ERROR ;
 void* SEC_ERROR_NO_SESSION ;
 scalar_t__ SEC_K ;
 scalar_t__ SEC_P ;
 scalar_t__ SEC_X ;
 int TruncateCharFromStr (char*,char) ;
 int Zero (char*,int) ;
 TYPE_2__* ZeroMalloc (int) ;
 scalar_t__ stub1 (int ,char*,int) ;
 scalar_t__ stub2 (int ,scalar_t__*,int,scalar_t__*) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 scalar_t__ stub5 (int ,scalar_t__,char*,int) ;

LIST *EnumSecObject(SECURE *sec)
{
 CK_BBOOL b_true = 1, b_false = 0;
 UINT objects[MAX_OBJ];
 UINT i;
 UINT ret;
 LIST *o;
 CK_ATTRIBUTE dummy[1];
 CK_ATTRIBUTE a[] =
 {
  {CKA_TOKEN, &b_true, sizeof(b_true)},
 };
 UINT num_objects = MAX_OBJ;

 if (sec == ((void*)0))
 {
  return ((void*)0);
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return ((void*)0);
 }

 Zero(dummy, sizeof(dummy));


 if (sec->EnumCache != ((void*)0))
 {
  return CloneEnumSecObject(sec->EnumCache);
 }





  ret = sec->Api->C_FindObjectsInit(sec->SessionId, a, sizeof(a) / sizeof(a[0]));







 if (ret != CKR_OK)
 {
  sec->Error = SEC_ERROR_HARDWARE_ERROR;
  return ((void*)0);
 }
 if (sec->Api->C_FindObjects(sec->SessionId, objects, sizeof(objects) / sizeof(objects[0]), &num_objects) != CKR_OK)
 {
  sec->Api->C_FindObjectsFinal(sec->SessionId);
  sec->Error = SEC_ERROR_HARDWARE_ERROR;
  return ((void*)0);
 }
 sec->Api->C_FindObjectsFinal(sec->SessionId);

 o = NewListFast(((void*)0));

 for (i = 0;i < num_objects;i++)
 {
  char label[MAX_SIZE];
  UINT obj_class = 0;
  bool priv = 0;
  CK_ATTRIBUTE get[] =
  {
   {CKA_LABEL, label, sizeof(label) - 1},
   {CKA_CLASS, &obj_class, sizeof(obj_class)},
   {CKA_PRIVATE, &priv, sizeof(priv)},
  };

  Zero(label, sizeof(label));

  if (sec->Api->C_GetAttributeValue(sec->SessionId, objects[i],
   get, sizeof(get) / sizeof(get[0])) == CKR_OK)
  {
   UINT type = INFINITE;

   switch (obj_class)
   {
   case 130:

    type = SEC_DATA;
    break;

   case 131:

    type = SEC_X;
    break;

   case 128:

    type = SEC_P;
    break;

   case 129:

    type = SEC_K;
    break;
   }

   if (type != INFINITE)
   {
    SEC_OBJ *obj = ZeroMalloc(sizeof(SEC_OBJ));

    obj->Type = type;
    obj->Object = objects[i];
    obj->Private = (priv == 0) ? 0 : 1;
    EnSafeStr(label, '?');
    TruncateCharFromStr(label, '?');
    obj->Name = CopyStr(label);

    Add(o, obj);
   }
  }
 }


 sec->EnumCache = CloneEnumSecObject(o);

 return o;
}
