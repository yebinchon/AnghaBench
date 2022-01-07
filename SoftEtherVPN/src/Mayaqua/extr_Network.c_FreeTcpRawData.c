
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Data; } ;
typedef TYPE_1__ TCP_RAW_DATA ;


 int Free (TYPE_1__*) ;
 int ReleaseFifo (int ) ;

void FreeTcpRawData(TCP_RAW_DATA *trd)
{

 if (trd == ((void*)0))
 {
  return;
 }

 ReleaseFifo(trd->Data);
 Free(trd);
}
