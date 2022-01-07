
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int vv ;
typedef int tmp ;
struct TYPE_6__ {int BroadcastBytes; int BroadcastCount; int UnicastBytes; int UnicastCount; } ;
struct TYPE_5__ {int BroadcastBytes; int BroadcastCount; int UnicastBytes; int UnicastCount; } ;
struct TYPE_7__ {TYPE_2__ Recv; TYPE_1__ Send; } ;
typedef TYPE_3__ TRAFFIC ;
typedef int CT ;


 int CtInsert (int *,int ,int *) ;
 int MAX_SIZE ;
 int ToStr3 (char*,int,int ) ;
 int UniFormat (int *,int,int ,char*) ;
 int _UU (char*) ;

void CmdInsertTrafficInfo(CT *ct, TRAFFIC *t)
{
 wchar_t tmp[MAX_SIZE];
 char vv[128];

 if (ct == ((void*)0) || t == ((void*)0))
 {
  return;
 }


 ToStr3(vv, sizeof(vv), t->Send.UnicastCount);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_NUM_PACKET_STR"), vv);
 CtInsert(ct, _UU("SM_ST_SEND_UCAST_NUM"), tmp);

 ToStr3(vv, sizeof(vv), t->Send.UnicastBytes);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_SIZE_BYTE_STR"), vv);
 CtInsert(ct, _UU("SM_ST_SEND_UCAST_SIZE"), tmp);

 ToStr3(vv, sizeof(vv), t->Send.BroadcastCount);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_NUM_PACKET_STR"), vv);
 CtInsert(ct, _UU("SM_ST_SEND_BCAST_NUM"), tmp);

 ToStr3(vv, sizeof(vv), t->Send.BroadcastBytes);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_SIZE_BYTE_STR"), vv);
 CtInsert(ct, _UU("SM_ST_SEND_BCAST_SIZE"), tmp);


 ToStr3(vv, sizeof(vv), t->Recv.UnicastCount);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_NUM_PACKET_STR"), vv);
 CtInsert(ct, _UU("SM_ST_RECV_UCAST_NUM"), tmp);

 ToStr3(vv, sizeof(vv), t->Recv.UnicastBytes);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_SIZE_BYTE_STR"), vv);
 CtInsert(ct, _UU("SM_ST_RECV_UCAST_SIZE"), tmp);

 ToStr3(vv, sizeof(vv), t->Recv.BroadcastCount);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_NUM_PACKET_STR"), vv);
 CtInsert(ct, _UU("SM_ST_RECV_BCAST_NUM"), tmp);

 ToStr3(vv, sizeof(vv), t->Recv.BroadcastBytes);
 UniFormat(tmp, sizeof(tmp), _UU("SM_ST_SIZE_BYTE_STR"), vv);
 CtInsert(ct, _UU("SM_ST_RECV_BCAST_SIZE"), tmp);
}
