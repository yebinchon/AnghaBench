
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* last; TYPE_3__* first; } ;
struct TYPE_10__ {TYPE_3__* next; TYPE_3__* left; } ;
struct TYPE_9__ {TYPE_3__* right; void* subid; } ;
struct TYPE_11__ {TYPE_2__ u2; TYPE_1__ u1; } ;
typedef TYPE_3__ Reinst ;
typedef TYPE_4__ Node ;




 int const NOP ;



 int RBRA ;

 int* atorp ;
 TYPE_3__* newinst (int const) ;
 TYPE_4__* popand (char) ;
 int popator () ;
 int pushand (TYPE_3__*,TYPE_3__*) ;
 int rcerror (char*) ;
 void** subidp ;

__attribute__((used)) static void
evaluntil(int pri)
{
 Node *op1, *op2;
 Reinst *inst1, *inst2;

 while(pri==RBRA || atorp[-1]>=pri){
  switch(popator()){
  default:
   rcerror("unknown operator in evaluntil");
   break;
  case 132:
   op1 = popand('(');
   inst2 = newinst(RBRA);
   inst2->u1.subid = *subidp;
   op1->last->u2.next = inst2;
   inst1 = newinst(132);
   inst1->u1.subid = *subidp;
   inst1->u2.next = op1->first;
   pushand(inst1, inst2);
   return;
  case 131:
   op2 = popand('|');
   op1 = popand('|');
   inst2 = newinst(NOP);
   op2->last->u2.next = inst2;
   op1->last->u2.next = inst2;
   inst1 = newinst(131);
   inst1->u1.right = op1->first;
   inst1->u2.left = op2->first;
   pushand(inst1, inst2);
   break;
  case 133:
   op2 = popand(0);
   op1 = popand(0);
   op1->last->u2.next = op2->first;
   pushand(op1->first, op2->last);
   break;
  case 128:
   op2 = popand('*');
   inst1 = newinst(131);
   op2->last->u2.next = inst1;
   inst1->u1.right = op2->first;
   pushand(inst1, inst1);
   break;
  case 130:
   op2 = popand('+');
   inst1 = newinst(131);
   op2->last->u2.next = inst1;
   inst1->u1.right = op2->first;
   pushand(op2->first, inst1);
   break;
  case 129:
   op2 = popand('?');
   inst1 = newinst(131);
   inst2 = newinst(NOP);
   inst1->u2.left = inst2;
   inst1->u1.right = op2->first;
   op2->last->u2.next = inst2;
   pushand(inst1, inst2);
   break;
  }
 }
}
