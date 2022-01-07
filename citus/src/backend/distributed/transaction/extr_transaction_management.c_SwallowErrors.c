
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ elevel; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 TYPE_1__* CopyErrorData () ;
 int CurrentMemoryContext ;
 scalar_t__ ERROR ;
 int FlushErrorState () ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int ThrowErrorData (TYPE_1__*) ;
 scalar_t__ WARNING ;

__attribute__((used)) static void
SwallowErrors(void (*func)())
{
 MemoryContext savedContext = CurrentMemoryContext;

 PG_TRY();
 {
  func();
 }
 PG_CATCH();
 {
  ErrorData *edata = CopyErrorData();


  if (edata->elevel != ERROR)
  {
   PG_RE_THROW();
  }


  edata->elevel = WARNING;
  ThrowErrorData(edata);


  FlushErrorState();
  MemoryContextSwitchTo(savedContext);
 }
 PG_END_TRY();
}
