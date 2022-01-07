
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int * Str; int LastSelectedTime; } ;
typedef int LIST ;
typedef TYPE_1__ CANDIDATE ;
typedef int BUF ;


 int Add (int *,TYPE_1__*) ;
 int Free (int *) ;
 int * NewCandidateList () ;
 scalar_t__ ReadBuf (int *,int *,scalar_t__) ;
 scalar_t__ ReadBufInt (int *) ;
 int ReadBufInt64 (int *) ;
 int Sort (int *) ;
 void* ZeroMalloc (int) ;

LIST *BufToCandidate(BUF *b)
{
 LIST *o;
 UINT i;
 UINT num;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 num = ReadBufInt(b);
 o = NewCandidateList();

 for (i = 0;i < num;i++)
 {
  CANDIDATE *c;
  wchar_t *s;
  UINT64 sec64;
  UINT len, size;
  sec64 = ReadBufInt64(b);
  len = ReadBufInt(b);
  if (len >= 65536)
  {
   break;
  }
  size = (len + 1) * 2;
  s = ZeroMalloc(size);
  if (ReadBuf(b, s, size) != size)
  {
   Free(s);
   break;
  }
  else
  {
   c = ZeroMalloc(sizeof(CANDIDATE));
   c->LastSelectedTime = sec64;
   c->Str = s;
   Add(o, c);
  }
 }

 Sort(o);
 return o;
}
