
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_STUB ;
 scalar_t__ CJUMP ;
 int CLOCK_DIVIDER ;
 int HOST_CCREG ;
 int NODS ;
 scalar_t__ RJUMP ;
 scalar_t__ SJUMP ;
 int TAKEN ;
 int add_stub (int ,int,int,int,int,int,int,int ) ;
 int* ba ;
 int* ccadj ;
 int* cycles ;
 int emit_addimm_and_set_flags (int,int ) ;
 int emit_andimm (int ,int,int ) ;
 int emit_cmpimm (int ,int) ;
 int emit_jmp (int ) ;
 int emit_jns (int ) ;
 scalar_t__ internal_branch (int) ;
 scalar_t__* is_ds ;
 scalar_t__* itype ;
 scalar_t__ out ;
 scalar_t__* source ;
 int start ;

void do_cc(int i,signed char i_regmap[],int *adj,int addr,int taken,int invert)
{
  int count;
  int jaddr;
  int idle=0;
  if(itype[i]==RJUMP)
  {
    *adj=0;
  }

  if(internal_branch(ba[i]))
  {
    int t=(ba[i]-start)>>1;
    if(is_ds[t]) *adj=ccadj[t+1]-cycles[t];
    else *adj=ccadj[t];
  }
  else
  {
    *adj=0;
  }
  if(itype[i]==CJUMP) *adj-=2+cycles[i];
  if(itype[i]==SJUMP) *adj-=1+cycles[i]+cycles[i+1];
  count=ccadj[i]+((taken==NODS)?0:cycles[i]+cycles[i+1]);
  if(taken==TAKEN && i==(ba[i]-start)>>1 && source[i+1]==0) {



    idle=(int)out;

    emit_andimm(HOST_CCREG,3,HOST_CCREG);
    jaddr=(int)out;
    emit_jmp(0);
  }
  else if(*adj==0||invert) {
    emit_addimm_and_set_flags(CLOCK_DIVIDER*count,HOST_CCREG);
    jaddr=(int)out;
    emit_jns(0);
  }
  else
  {
    emit_cmpimm(HOST_CCREG,-CLOCK_DIVIDER*count);
    jaddr=(int)out;
    emit_jns(0);
  }
  add_stub(CC_STUB,jaddr,idle?idle:(int)out,(*adj==0||invert||idle)?0:count,i,addr,taken,0);
}
