
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int _flags; TYPE_1__* _nodes; } ;
struct TYPE_5__ {int next; int type; int left; int right; } ;
typedef TYPE_1__ TRexNode ;
typedef int TRexChar ;
typedef int TRexBool ;
typedef TYPE_2__ TRex ;




 int TREX_ICASE ;
 int TRex_False ;
 int TRex_True ;
 int tolower (int) ;
 int toupper (int) ;
 int trex_matchcclass (int,int) ;

__attribute__((used)) static TRexBool trex_matchclass(TRex* exp,TRexNode *node,TRexChar c)
{
 do {
  switch(node->type) {
   case 128:
    if (exp->_flags & TREX_ICASE)
    {
     if(c >= toupper(node->left) && c <= toupper(node->right)) return TRex_True;
     if(c >= tolower(node->left) && c <= tolower(node->right)) return TRex_True;
    }
    else
    {
     if(c >= node->left && c <= node->right) return TRex_True;
    }
    break;
   case 129:
    if(trex_matchcclass(node->left,c)) return TRex_True;
    break;
   default:
    if (exp->_flags & TREX_ICASE)
    {
     if (c == tolower(node->type) || c == toupper(node->type)) return TRex_True;
    }
    else
    {
     if(c == node->type)return TRex_True;
    }

  }
 } while((node->next != -1) && (node = &exp->_nodes[node->next]));
 return TRex_False;
}
