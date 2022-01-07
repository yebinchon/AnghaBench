
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VALUE ;
typedef size_t UINT ;
struct TYPE_3__ {size_t type; size_t num_value; int ** values; int name; } ;
typedef TYPE_1__ ELEMENT ;
typedef int BUF ;


 int WriteBufInt (int *,size_t) ;
 int WriteBufStr (int *,int ) ;
 int WriteValue (int *,int *,size_t) ;

void WriteElement(BUF *b, ELEMENT *e)
{
 UINT i;

 if (b == ((void*)0) || e == ((void*)0))
 {
  return;
 }


 WriteBufStr(b, e->name);

 WriteBufInt(b, e->type);

 WriteBufInt(b, e->num_value);

 for (i = 0;i < e->num_value;i++)
 {
  VALUE *v = e->values[i];
  WriteValue(b, v, e->type);
 }
}
