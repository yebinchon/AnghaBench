
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int s32 ;
struct TYPE_5__ {int dirty1; int CycleSup; int CycleIO; int CycleToDo; int IRQLine; int Status; int USP; int flag_S; int flag_I; int flag_X; int flag_N; int flag_notZ; int flag_V; int flag_C; int * A; int * D; } ;
typedef TYPE_1__ c68k_struc ;
struct TYPE_6__ {int member_1; int member_0; } ;
typedef TYPE_2__ IOCheck_struct ;
typedef int FILE ;


 int C68K ;
 scalar_t__ C68k_Get_PC (int *) ;
 int ywrite (TYPE_2__*,void*,int,int,int *) ;

__attribute__((used)) static void C68k_Save_State(c68k_struc *mcpu, FILE * fp)
{
   IOCheck_struct check = { 0, 0 };
   int i = 0;
   u32 pc = 0;

   for (i = 0; i < 8; i++)
      ywrite(&check, (void *)&mcpu->D[i], sizeof(u32), 1, fp);

   for (i = 0; i < 8; i++)
      ywrite(&check, (void *)&mcpu->A[i], sizeof(u32), 1, fp);

   ywrite(&check, (void *)&mcpu->flag_C, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->flag_V, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->flag_notZ, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->flag_N, sizeof(u32), 1, fp);

   ywrite(&check, (void *)&mcpu->flag_X, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->flag_I, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->flag_S, sizeof(u32), 1, fp);

   ywrite(&check, (void *)&mcpu->USP, sizeof(u32), 1, fp);

   pc = C68k_Get_PC(&C68K);

   ywrite(&check, (void *)&pc, sizeof(u32), 1, fp);

   ywrite(&check, (void *)&mcpu->Status, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&mcpu->IRQLine, sizeof(s32), 1, fp);

   ywrite(&check, (void *)&mcpu->CycleToDo, sizeof(s32), 1, fp);
   ywrite(&check, (void *)&mcpu->CycleIO, sizeof(s32), 1, fp);
   ywrite(&check, (void *)&mcpu->CycleSup, sizeof(s32), 1, fp);
   ywrite(&check, (void *)&mcpu->dirty1, sizeof(u32), 1, fp);
}
