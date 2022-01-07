
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* _nodes; } ;
struct TYPE_5__ {int left; } ;
typedef TYPE_2__ TRex ;


 int OP_CCLASS ;
 int trex_newnode (TYPE_2__*,int ) ;

__attribute__((used)) static int trex_charclass(TRex *exp,int classid)
{
 int n = trex_newnode(exp,OP_CCLASS);
 exp->_nodes[n].left = classid;
 return n;
}
