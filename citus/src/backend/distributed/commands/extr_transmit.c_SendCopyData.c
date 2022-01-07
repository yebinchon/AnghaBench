
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
struct TYPE_7__ {int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__* StringInfo ;


 int pq_beginmessage (TYPE_1__*,char) ;
 int pq_endmessage (TYPE_1__*) ;
 int pq_sendbytes (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
SendCopyData(StringInfo fileBuffer)
{
 StringInfoData copyData = { ((void*)0), 0, 0, 0 };

 pq_beginmessage(&copyData, 'd');
 pq_sendbytes(&copyData, fileBuffer->data, fileBuffer->len);
 pq_endmessage(&copyData);
}
