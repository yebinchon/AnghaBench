
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_orrmi_imm (int,int,int) ;
 int emit_orrne_imm (int,int,int) ;
 int emit_teq (int,int) ;
 int emit_testimm (int,int) ;

void emit_div0s(int s1, int s2, int sr, int temp) {
  emit_andimm(sr,0xfe,sr);
  emit_testimm(s2,0x80000000);
  emit_orrne_imm(sr,0x100,sr);
  emit_testimm(s1,0x80000000);
  emit_orrne_imm(sr,0x200,sr);
  emit_teq(s1,s2);
  emit_orrmi_imm(sr,1,sr);
}
