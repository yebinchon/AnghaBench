
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int next; } ;
struct TYPE_5__ {int _first; TYPE_4__* _nodes; scalar_t__ _currsubexp; int const* _eol; int const* _bol; } ;
typedef int TRexChar ;
typedef int TRexBool ;
typedef TYPE_1__ TRex ;


 int TRex_False ;
 int TRex_True ;
 int * trex_matchnode (TYPE_1__*,TYPE_4__*,int const*,int *) ;

TRexBool trex_searchrange(TRex* exp,const TRexChar* text_begin,const TRexChar* text_end,const TRexChar** out_begin, const TRexChar** out_end)
{
 const TRexChar *cur = ((void*)0);
 int node = exp->_first;
 if(text_begin >= text_end) return TRex_False;
 exp->_bol = text_begin;
 exp->_eol = text_end;
 do {
  cur = text_begin;
  while(node != -1) {
   exp->_currsubexp = 0;
   cur = trex_matchnode(exp,&exp->_nodes[node],cur,((void*)0));
   if(!cur)
    break;
   node = exp->_nodes[node].next;
  }
  text_begin++;
 } while(cur == ((void*)0) && text_begin != text_end);

 if(cur == ((void*)0))
  return TRex_False;

 --text_begin;

 if(out_begin) *out_begin = text_begin;
 if(out_end) *out_end = cur;
 return TRex_True;
}
