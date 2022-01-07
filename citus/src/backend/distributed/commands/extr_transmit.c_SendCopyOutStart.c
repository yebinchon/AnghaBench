
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;


 int pq_beginmessage (TYPE_1__*,char) ;
 int pq_endmessage (TYPE_1__*) ;
 int pq_sendbyte (TYPE_1__*,char const) ;
 int pq_sendint (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
SendCopyOutStart(void)
{
 StringInfoData copyOutStart = { ((void*)0), 0, 0, 0 };
 const char copyFormat = 1;

 pq_beginmessage(&copyOutStart, 'H');
 pq_sendbyte(&copyOutStart, copyFormat);
 pq_sendint(&copyOutStart, 0, 2);
 pq_endmessage(&copyOutStart);
}
