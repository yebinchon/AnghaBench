
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; void* reg; } ;
typedef TYPE_1__ sh_operand_info ;
 void* IMM ;
 void* PCRELIMM ;
 void* REG_M ;
 void* REG_N ;
 int strcpy (char*,char const*) ;
 void* strtol (char*,char**,int) ;

int rebuild_args(const char *arg1,const char *arg2,sh_operand_info *a1,
                  sh_operand_info *a2,sh_operand_info *disp)





{
   char s1[30],s2[30];
   char *bp;

   strcpy(s1,arg1);
   strcpy(s2,arg2);
   bp = ((void*)0);

   switch(a1->type)
   {
     case 131:
     case 142:
     case 135:
     case 133:
     case 129: a1->type = REG_M;
                   break;
     case 130:
     case 141:
     case 134:
     case 132:
     case 128: a1->type = REG_N;
                   break;
     case 139: disp->reg = strtol(&s1[2],&bp,16);
                     disp->type = PCRELIMM;
                     break;
     case 140:disp->reg = strtol(&s1[2],&bp,16);
                     disp->type = IMM;
                     break;
     case 138: disp->reg = strtol(&s1[2],&bp,16);
                        disp->type = IMM;
                        a1->type = REG_M;
                        break;
     case 137: disp->reg = strtol(&s1[2],&bp,16);
                        disp->type = IMM;
                        a1->type = REG_N;
                        break;
     case 136 : disp->reg = strtol(&s1[1],&bp,16);
                        disp->type = IMM;
                        break;
     case 144 :
     case 143 : disp->reg = strtol(s1,&bp,16);
                        disp->type = IMM;
                        break;

   }

   switch(a2->type)
   {
     case 131:
     case 142:
     case 135:
     case 133:
     case 129: a2->type = REG_M;

                   break;
     case 130:
     case 141:
     case 134:
     case 132:
     case 128: a2->type = REG_N;

                   break;
     case 139: disp->reg = strtol(&s2[2],&bp,16);
                     disp->type = PCRELIMM;
                     break;
     case 140:disp->reg = strtol(&s2[2],&bp,16);
                     disp->type = IMM;
                     break;
     case 138: disp->reg = strtol(&s2[2],&bp,16);
                        disp->type = IMM;
                        a2->type = REG_M;
                        break;
     case 137: disp->reg = strtol(&s2[2],&bp,16);
                        disp->type = IMM;
                        a2->type = REG_N;
                        break;
     case 136 : disp->reg = strtol(&s2[1],&bp,16);
                        disp->type = IMM;
                        break;
     case 144 :
     case 143 : disp->reg = strtol(s2,&bp,16);
                        disp->type = IMM;
                        break;
   }

   return 0;
}
