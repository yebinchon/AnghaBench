
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Bits; int Size; int AllList; int * CompareProc; int * GetHashProc; void* Entries; int Ref; int Lock; } ;
typedef int LIST ;
typedef TYPE_1__ HASH_LIST ;
typedef int GET_HASH ;
typedef int COMPARE ;


 int MIN (int,int) ;
 int NewListFast (int *) ;
 int NewLock () ;
 int NewRef () ;
 int Power (int,int) ;
 void* ZeroMalloc (int) ;

HASH_LIST *NewHashList(GET_HASH *get_hash_proc, COMPARE *compare_proc, UINT bits, bool make_list)
{
 HASH_LIST *h;

 if (get_hash_proc == ((void*)0) || compare_proc == ((void*)0))
 {
  return ((void*)0);
 }
 if (bits == 0)
 {
  bits = 16;
 }

 bits = MIN(bits, 31);

 h = ZeroMalloc(sizeof(HASH_LIST));

 h->Bits = bits;
 h->Size = Power(2, bits);

 h->Lock = NewLock();
 h->Ref = NewRef();

 h->Entries = ZeroMalloc(sizeof(LIST *) * h->Size);

 h->GetHashProc = get_hash_proc;
 h->CompareProc = compare_proc;

 if (make_list)
 {
  h->AllList = NewListFast(((void*)0));
 }

 return h;
}
