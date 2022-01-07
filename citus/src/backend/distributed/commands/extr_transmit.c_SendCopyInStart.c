
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;


 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int pq_beginmessage (TYPE_1__*,char) ;
 int pq_endmessage (TYPE_1__*) ;
 int pq_flush () ;
 int pq_sendbyte (TYPE_1__*,char const) ;
 int pq_sendint (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
SendCopyInStart(void)
{
 StringInfoData copyInStart = { ((void*)0), 0, 0, 0 };
 const char copyFormat = 1;
 int flushed = 0;

 pq_beginmessage(&copyInStart, 'G');
 pq_sendbyte(&copyInStart, copyFormat);
 pq_sendint(&copyInStart, 0, 2);
 pq_endmessage(&copyInStart);


 flushed = pq_flush();
 if (flushed != 0)
 {
  ereport(WARNING, (errmsg("could not flush copy start data")));
 }
}
