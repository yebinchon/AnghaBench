
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* _matches; struct TYPE_4__* _jmpbuf; struct TYPE_4__* _nodes; } ;
typedef TYPE_1__ TRex ;


 int free (TYPE_1__*) ;

void trex_free(TRex *exp)
{
 if(exp) {
  if(exp->_nodes) free(exp->_nodes);
  if(exp->_jmpbuf) free(exp->_jmpbuf);
  if(exp->_matches) free(exp->_matches);
  free(exp);
 }
}
