
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* Str; void* LastSelectedTime; } ;
typedef TYPE_1__ wchar_t ;
typedef int UINT ;
typedef int LIST ;
typedef TYPE_1__ CANDIDATE ;


 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int Insert (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 void* SystemTime64 () ;
 void* UniCopyStr (TYPE_1__*) ;
 scalar_t__ UniStrCmpi (TYPE_1__*,TYPE_1__*) ;
 int UniTrim (TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

void AddCandidate(LIST *o, wchar_t *str, UINT num_max)
{
 UINT i;
 bool exists;

 if (o == ((void*)0) || str == ((void*)0))
 {
  return;
 }
 if (num_max == 0)
 {
  num_max = 0x7fffffff;
 }


 str = UniCopyStr(str);
 UniTrim(str);

 exists = 0;
 for (i = 0;i < LIST_NUM(o);i++)
 {
  CANDIDATE *c = LIST_DATA(o, i);
  if (UniStrCmpi(c->Str, str) == 0)
  {

   c->LastSelectedTime = SystemTime64();
   exists = 1;
   break;
  }
 }

 if (exists == 0)
 {

  CANDIDATE *c = ZeroMalloc(sizeof(CANDIDATE));
  c->LastSelectedTime = SystemTime64();
  c->Str = UniCopyStr(str);
  Insert(o, c);
 }


 Free(str);



 if (LIST_NUM(o) > num_max)
 {
  while (LIST_NUM(o) > num_max)
  {
   UINT index = LIST_NUM(o) - 1;
   CANDIDATE *c = LIST_DATA(o, index);
   Delete(o, c);
   Free(c->Str);
   Free(c);
  }
 }
}
