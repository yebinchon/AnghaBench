
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jmp_buf ;
struct TYPE_3__ {scalar_t__ _jmpbuf; int const** _error; } ;
typedef int TRexChar ;
typedef TYPE_1__ TRex ;


 int longjmp (int ,int) ;

__attribute__((used)) static void trex_error(TRex *exp,const TRexChar *error)
{
 if(exp->_error) *exp->_error = error;
 longjmp(*((jmp_buf*)exp->_jmpbuf),-1);
}
