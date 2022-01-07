
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int const* _eol; int _currsubexp; int const* _bol; int _flags; TYPE_2__* _nodes; TYPE_1__* _matches; } ;
struct TYPE_10__ {int type; int right; int next; size_t left; } ;
struct TYPE_9__ {int const* begin; int const* len; } ;
typedef int TRexNodeType ;
typedef TYPE_2__ TRexNode ;
typedef int TRexChar ;
typedef TYPE_3__ TRex ;
 int TREX_ICASE ;
 int TRex_False ;
 int TRex_True ;
 int isspace (int) ;
 int const tolower (int const) ;
 int const toupper (int const) ;
 int trex_matchcclass (size_t,int const) ;
 int trex_matchclass (TYPE_3__*,TYPE_2__*,int const) ;

__attribute__((used)) static const TRexChar *trex_matchnode(TRex* exp,TRexNode *node,const TRexChar *str,TRexNode *next)
{

 TRexNodeType type = node->type;
 switch(type) {
 case 132: {

  TRexNode *greedystop = ((void*)0);
  int p0 = (node->right >> 16)&0x0000FFFF, p1 = node->right&0x0000FFFF, nmaches = 0;
  const TRexChar *s=str, *good = str;

  if(node->next != -1) {
   greedystop = &exp->_nodes[node->next];
  }
  else {
   greedystop = next;
  }

  while((nmaches == 0xFFFF || nmaches < p1)) {

   const TRexChar *stop;
   if(!(s = trex_matchnode(exp,&exp->_nodes[node->left],s,greedystop)))
    break;
   nmaches++;
   good=s;
   if(greedystop) {


    if(greedystop->type != 132 ||
    (greedystop->type == 132 && ((greedystop->right >> 16)&0x0000FFFF) != 0))
    {
     TRexNode *gnext = ((void*)0);
     if(greedystop->next != -1) {
      gnext = &exp->_nodes[greedystop->next];
     }else if(next && next->next != -1){
      gnext = &exp->_nodes[next->next];
     }
     stop = trex_matchnode(exp,greedystop,s,gnext);
     if(stop) {

      if(p0 == p1 && p0 == nmaches) break;
      else if(nmaches >= p0 && p1 == 0xFFFF) break;
      else if(nmaches >= p0 && nmaches <= p1) break;
     }
    }
   }

   if(s >= exp->_eol)
    break;
  }
  if(p0 == p1 && p0 == nmaches) return good;
  else if(nmaches >= p0 && p1 == 0xFFFF) return good;
  else if(nmaches >= p0 && nmaches <= p1) return good;
  return ((void*)0);
 }
 case 129: {
   const TRexChar *asd = str;
   TRexNode *temp=&exp->_nodes[node->left];
   while( (asd = trex_matchnode(exp,temp,asd,((void*)0))) ) {
    if(temp->next != -1)
     temp = &exp->_nodes[temp->next];
    else
     return asd;
   }
   asd = str;
   temp = &exp->_nodes[node->right];
   while( (asd = trex_matchnode(exp,temp,asd,((void*)0))) ) {
    if(temp->next != -1)
     temp = &exp->_nodes[temp->next];
    else
     return asd;
   }
   return ((void*)0);
   break;
 }
 case 133:
 case 130:{
   TRexNode *n = &exp->_nodes[node->left];
   const TRexChar *cur = str;
   int capture = -1;
   if(node->type != 130 && node->right == exp->_currsubexp) {
    capture = exp->_currsubexp;
    exp->_matches[capture].begin = cur;
    exp->_currsubexp++;
   }

   do {
    TRexNode *subnext = ((void*)0);
    if(n->next != -1) {
     subnext = &exp->_nodes[n->next];
    }else {
     subnext = next;
    }
    if(!(cur = trex_matchnode(exp,n,cur,subnext))) {
     if(capture != -1){
      exp->_matches[capture].begin = 0;
      exp->_matches[capture].len = 0;
     }
     return ((void*)0);
    }
   } while((n->next != -1) && (n = &exp->_nodes[n->next]));

   if(capture != -1)
    exp->_matches[capture].len = cur - exp->_matches[capture].begin;
   return cur;
 }
 case 128:
  if((str == exp->_bol && !isspace((int) *str))
   || ((str == exp->_eol && !isspace((int) *(str-1))))
   || ((!isspace((int) *str) && isspace((int) *(str+1))))
   || ((isspace((int) *str) && !isspace((int) *(str+1)))) ) {
   return (node->left == 'b')?str:((void*)0);
  }
  return (node->left == 'b')?((void*)0):str;
 case 138:
  if(str == exp->_bol) return str;
  return ((void*)0);
 case 134:
  if(str == exp->_eol) return str;
  return ((void*)0);
 case 135:
  str++;
  return str;
 case 131:
 case 136:
  if(trex_matchclass(exp,&exp->_nodes[node->left],*str)?(type == 136?TRex_True:TRex_False):(type == 131?TRex_True:TRex_False)) {
                        str++;
   return str;
  }
  return ((void*)0);
 case 137:
  if(trex_matchcclass(node->left,*str)) {
                        str++;
   return str;
  }
  return ((void*)0);
 default:
  if (exp->_flags & TREX_ICASE)
  {
   if(*str != tolower(node->type) && *str != toupper(node->type)) return ((void*)0);
  }
  else
  {
   if (*str != node->type) return ((void*)0);
  }
  str++;
  return str;
 }
 return ((void*)0);
}
