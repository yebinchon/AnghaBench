
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kPaniclogFlushOtherLog ;
 int paniclog_flush_internal (int ) ;

void
paniclog_flush()
{

 paniclog_flush_internal(kPaniclogFlushOtherLog);
 return;
}
