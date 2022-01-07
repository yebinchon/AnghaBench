
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reinst ;
typedef int Node ;


 int NOP ;
 int * andp ;
 int * andstack ;
 int * newinst (int ) ;
 int pushand (int *,int *) ;
 int regerr2 (char*,int) ;

__attribute__((used)) static Node*
popand(int op)
{
 Reinst *inst;

 if(andp <= &andstack[0]){
  regerr2("missing operand for ", op);
  inst = newinst(NOP);
  pushand(inst,inst);
 }
 return --andp;
}
