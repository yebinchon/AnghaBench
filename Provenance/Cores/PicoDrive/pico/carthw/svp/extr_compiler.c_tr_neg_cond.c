
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_ANOMALY ;
 int elprintf (int ,char*) ;
 int exit (int) ;

__attribute__((used)) static int tr_neg_cond(int cond)
{
 switch (cond) {
  case 132: elprintf(EL_ANOMALY, "neg for AL?\n"); exit(1);
  case 131: return 129;
  case 129: return 131;
  case 130: return 128;
  case 128: return 130;
  default: elprintf(EL_ANOMALY, "bad cond for neg\n"); exit(1);
 }
 return 0;
}
