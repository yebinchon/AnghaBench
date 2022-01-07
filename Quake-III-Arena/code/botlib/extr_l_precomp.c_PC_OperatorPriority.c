
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qfalse ;

int PC_OperatorPriority(int op)
{
 switch(op)
 {
  case 131: return 15;
  case 143: return 15;
  case 132: return 15;
  case 149: return 14;
  case 128: return 14;

  case 142: return 7;
  case 135: return 6;
  case 140: return 12;
  case 138: return 12;
  case 141: return 11;
  case 134: return 11;

  case 136: return 16;
  case 139: return 12;
  case 137: return 12;

  case 129: return 13;
  case 133: return 13;

  case 148: return 10;
  case 146: return 8;
  case 145: return 9;
  case 147: return 16;

  case 144: return 5;
  case 130: return 5;
 }
 return qfalse;
}
