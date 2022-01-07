
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * AckReplyList; } ;
typedef TYPE_1__ OPENVPN_CHANNEL ;
typedef int LIST ;


 int Add (int *,scalar_t__*) ;
 int Delete (int *,scalar_t__*) ;
 int Free (scalar_t__*) ;
 scalar_t__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int * NewListFast (int *) ;
 int OPENVPN_MAX_NUMACK ;
 int ReleaseList (int *) ;

UINT OvsGetAckReplyList(OPENVPN_CHANNEL *c, UINT *ret)
{
 UINT i;
 LIST *o = ((void*)0);
 UINT num;

 if (c == ((void*)0) || ret == ((void*)0))
 {
  return 0;
 }

 num = MIN(LIST_NUM(c->AckReplyList), OPENVPN_MAX_NUMACK);

 for (i = 0;i < num;i++)
 {
  UINT *v = LIST_DATA(c->AckReplyList, i);

  if (o == ((void*)0))
  {
   o = NewListFast(((void*)0));
  }

  Add(o, v);

  ret[i] = *v;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  UINT *v = LIST_DATA(o, i);

  Delete(c->AckReplyList, v);

  Free(v);
 }

 ReleaseList(o);

 return num;
}
