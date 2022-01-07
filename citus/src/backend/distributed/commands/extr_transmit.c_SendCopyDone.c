
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;


 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int pq_beginmessage (TYPE_1__*,char) ;
 int pq_endmessage (TYPE_1__*) ;
 int pq_flush () ;

__attribute__((used)) static void
SendCopyDone(void)
{
 StringInfoData copyDone = { ((void*)0), 0, 0, 0 };
 int flushed = 0;

 pq_beginmessage(&copyDone, 'c');
 pq_endmessage(&copyDone);


 flushed = pq_flush();
 if (flushed != 0)
 {
  ereport(WARNING, (errmsg("could not flush copy start data")));
 }
}
