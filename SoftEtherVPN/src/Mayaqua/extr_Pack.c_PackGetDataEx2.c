
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int Copy (void*,int ,scalar_t__) ;
 int GetDataValue (int *,scalar_t__) ;
 scalar_t__ GetDataValueSize (int *,scalar_t__) ;
 int * GetElement (int *,char*,int ) ;
 int VALUE_DATA ;

bool PackGetDataEx2(PACK *p, char *name, void *data, UINT size, UINT index)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 e = GetElement(p, name, VALUE_DATA);
 if (e == ((void*)0))
 {
  return 0;
 }
 if (GetDataValueSize(e, index) != size)
 {
  return 0;
 }
 Copy(data, GetDataValue(e, index), GetDataValueSize(e, index));
 return 1;
}
