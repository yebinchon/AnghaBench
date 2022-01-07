
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int VALUE ;
typedef int UINT ;
typedef int ELEMENT ;
typedef int BUF ;


 int Free (int **) ;
 int MAX_ELEMENT_NAME_LEN ;
 int MAX_VALUE_NUM ;
 scalar_t__ Malloc (int) ;
 int * NewElement (char*,int,int,int **) ;
 int ReadBufInt (int *) ;
 int ReadBufStr (int *,char*,int) ;
 int * ReadValue (int *,int) ;

ELEMENT *ReadElement(BUF *b)
{
 UINT i;
 char name[MAX_ELEMENT_NAME_LEN + 1];
 UINT type, num_value;
 VALUE **values;
 ELEMENT *e;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }


 if (ReadBufStr(b, name, sizeof(name)) == 0)
 {
  return ((void*)0);
 }


 type = ReadBufInt(b);


 num_value = ReadBufInt(b);
 if (num_value > MAX_VALUE_NUM)
 {

  return ((void*)0);
 }


 values = (VALUE **)Malloc(sizeof(VALUE *) * num_value);
 for (i = 0;i < num_value;i++)
 {
  values[i] = ReadValue(b, type);
 }


 e = NewElement(name, type, num_value, values);

 Free(values);

 return e;
}
