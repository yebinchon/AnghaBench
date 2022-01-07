
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;


 scalar_t__ CJUMP ;
 scalar_t__ RJUMP ;
 scalar_t__ SJUMP ;
 long long SR ;
 scalar_t__ SYSTEM ;
 int TBIT ;
 scalar_t__ UJUMP ;
 scalar_t__* ba ;
 long long* branch_unneeded_reg ;
 scalar_t__* itype ;
 int* opcode ;
 long long* rs1 ;
 long long* rs2 ;
 long long* rs3 ;
 long long* rt1 ;
 long long* rt2 ;
 int slen ;
 int* source ;
 scalar_t__ start ;
 long long* unneeded_reg ;

void unneeded_registers(int istart,int iend,int r)
{
  int i;
  u64 u,uu,b,bu;
  u64 temp_u,temp_uu;
  u64 tdep;
  if(iend==slen-1) {
    u=0;
  }else{
    u=unneeded_reg[iend+1];
    u=0;
  }
  for (i=iend;i>=istart;i--)
  {

    if(itype[i]==RJUMP||itype[i]==UJUMP||itype[i]==CJUMP||itype[i]==SJUMP)
    {
      if(ba[i]<start || ba[i]>=(start+slen*2))
      {

        u=0;
        branch_unneeded_reg[i]=u;
        if(itype[i]!=CJUMP) {

          if(rt1[i+1]>=0) u|=1LL<<rt1[i+1];
          if(rt2[i+1]>=0) u|=1LL<<rt2[i+1];
          if(rs1[i+1]>=0) u&=~(1LL<<rs1[i+1]);
          if(rs2[i+1]>=0) u&=~(1LL<<rs2[i+1]);
          if(rs3[i+1]>=0) u&=~(1LL<<rs3[i+1]);
        }
      }
      else
      {
        if(ba[i]<=start+i*2) {

          if(itype[i]==UJUMP||itype[i]==RJUMP)
          {

            temp_u=0;
          } else if(itype[i]==CJUMP) {

            temp_u=unneeded_reg[i+1];
          } else {

            temp_u=unneeded_reg[i+2];
          }
          if(itype[i]!=CJUMP) {

            if(rt1[i+1]>=0) temp_u|=1LL<<rt1[i+1];
            if(rt2[i+1]>=0) temp_u|=1LL<<rt2[i+1];
            if(rs1[i+1]>=0) temp_u&=~(1LL<<rs1[i+1]);
            if(rs2[i+1]>=0) temp_u&=~(1LL<<rs2[i+1]);
            if(rs3[i+1]>=0) temp_u&=~(1LL<<rs3[i+1]);
          }
          if(rt1[i]>=0) temp_u|=1LL<<rt1[i];
          if(rt2[i]>=0) temp_u|=1LL<<rt2[i];
          if(rs1[i]>=0) temp_u&=~(1LL<<rs1[i]);
          if(rs2[i]>=0) temp_u&=~(1LL<<rs2[i]);
          if(rs3[i]>=0) temp_u&=~(1LL<<rs3[i]);
          unneeded_reg[i]=temp_u;


          if(r<2) {
            unneeded_registers((ba[i]-start)>>1,i-1,r+1);
          }else{
            unneeded_reg[(ba[i]-start)>>1]=0;
          }
        } if(1) {
          if(itype[i]==UJUMP||itype[i]==RJUMP)
          {

            u=unneeded_reg[(ba[i]-start)>>1];

            u&=~((1LL<<15)|(1LL<<SR));
            branch_unneeded_reg[i]=u;



            if(rt1[i+1]>=0) u|=1LL<<rt1[i+1];
            if(rt2[i+1]>=0) u|=1LL<<rt2[i+1];
            if(rs1[i+1]>=0) u&=~(1LL<<rs1[i+1]);
            if(rs2[i+1]>=0) u&=~(1LL<<rs2[i+1]);
            if(rs3[i+1]>=0) u&=~(1LL<<rs3[i+1]);
          } else {

            b=unneeded_reg[(ba[i]-start)>>1];
            branch_unneeded_reg[i]=b;



            if(itype[i]!=CJUMP) {
              if(rt1[i+1]>=0) b|=1LL<<rt1[i+1];
              if(rt2[i+1]>=0) b|=1LL<<rt2[i+1];
              if(rs1[i+1]>=0) b&=~(1LL<<rs1[i+1]);
              if(rs2[i+1]>=0) b&=~(1LL<<rs2[i+1]);
              if(rs3[i+1]>=0) b&=~(1LL<<rs3[i+1]);
            }
            u&=b;

            u&=~((1LL<<15)|(1LL<<SR));

            if(itype[i]!=CJUMP) {
              if(i<slen-1) {
                branch_unneeded_reg[i]&=unneeded_reg[i+2];
              } else {
                branch_unneeded_reg[i]=0;
              }
            }else{
              if(i<slen) {
                branch_unneeded_reg[i]&=unneeded_reg[i+1];
              } else {
                branch_unneeded_reg[i]=0;
              }
            }

          }
        }
      }
    }
    else if(itype[i]==RJUMP && source[i]==0x2b)
    {

      u=(1<<SR);
    }
    else if(itype[i]==SYSTEM && opcode[i]==12)
    {

      u=0;
    }



    if(rt1[i]>=0) u|=1LL<<rt1[i];
    if(rt2[i]>=0) u|=1LL<<rt2[i];

    if(rs1[i]>=0) u&=~(1LL<<rs1[i]);
    if(rs2[i]>=0) u&=~(1LL<<rs2[i]);
    if(rs3[i]>=0) u&=~(1LL<<rs3[i]);



    if(u&(1<<SR)) u|=(1<<TBIT);

    unneeded_reg[i]=u;
  }
}
