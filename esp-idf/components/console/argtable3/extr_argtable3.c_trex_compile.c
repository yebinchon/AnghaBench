
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jmp_buf ;
struct TYPE_9__ {char const* _p; int _nallocated; int _nsize; int _nsubexpr; size_t _first; char const** _error; int _flags; int * _matches; TYPE_1__* _nodes; scalar_t__ _jmpbuf; int * _bol; int _eol; } ;
struct TYPE_8__ {int left; scalar_t__ type; int next; int right; } ;
typedef TYPE_1__ TRexNode ;
typedef int TRexMatch ;
typedef char TRexChar ;
typedef TYPE_2__ TRex ;


 scalar_t__ MAX_CHAR ;
 int OP_EXPR ;
 int _SC (char*) ;
 int * g_nnames ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 int scprintf (int ,...) ;
 scalar_t__ scstrlen (char const*) ;
 scalar_t__ setjmp (int ) ;
 int trex_error (TYPE_2__*,int ) ;
 int trex_free (TYPE_2__*) ;
 int trex_list (TYPE_2__*) ;
 size_t trex_newnode (TYPE_2__*,int ) ;

TRex *trex_compile(const TRexChar *pattern,const TRexChar **error,int flags)
{
 TRex *exp = (TRex *)malloc(sizeof(TRex));
 exp->_eol = exp->_bol = ((void*)0);
 exp->_p = pattern;
 exp->_nallocated = (int)scstrlen(pattern) * sizeof(TRexChar);
 exp->_nodes = (TRexNode *)malloc(exp->_nallocated * sizeof(TRexNode));
 exp->_nsize = 0;
 exp->_matches = 0;
 exp->_nsubexpr = 0;
 exp->_first = trex_newnode(exp,OP_EXPR);
 exp->_error = error;
 exp->_jmpbuf = malloc(sizeof(jmp_buf));
 exp->_flags = flags;
 if(setjmp(*((jmp_buf*)exp->_jmpbuf)) == 0) {
  int res = trex_list(exp);
  exp->_nodes[exp->_first].left = res;
  if(*exp->_p!='\0')
   trex_error(exp,_SC("unexpected character"));
  exp->_matches = (TRexMatch *) malloc(exp->_nsubexpr * sizeof(TRexMatch));
  memset(exp->_matches,0,exp->_nsubexpr * sizeof(TRexMatch));
 }
 else{
  trex_free(exp);
  return ((void*)0);
 }
 return exp;
}
