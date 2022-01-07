
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 int q68_set_areg (int ,int,scalar_t__) ;
 int q68_set_dreg (int ,int,scalar_t__) ;
 int q68_set_pc (int ,scalar_t__) ;
 int q68_set_sr (int ,scalar_t__) ;
 int q68_set_ssp (int ,scalar_t__) ;
 int q68_set_usp (int ,scalar_t__) ;
 int state ;
 int yread (TYPE_1__*,void*,int,int,int *) ;

__attribute__((used)) static void m68kq68_load_state(FILE * fp)
{
   int i = 0;
   u32 val = 0;
   IOCheck_struct check = { 0, 0 };

   for (i = 0; i < 8; i++)
   {
      yread(&check, (void *)&val, sizeof(u32), 1, fp);
      q68_set_dreg(state, i, val);
   }

   for (i = 0; i < 8; i++)
   {
      yread(&check, (void *)&val, sizeof(u32), 1, fp);
      q68_set_areg(state, i, val);
   }

   yread(&check, (void *)&val, sizeof(u32), 1, fp);
   q68_set_pc(state, val);

   yread(&check, (void *)&val, sizeof(u32), 1, fp);
   q68_set_sr(state, val);

   yread(&check, (void *)&val, sizeof(u32), 1, fp);
   q68_set_usp(state, val);

   yread(&check, (void *)&val, sizeof(u32), 1, fp);
   q68_set_ssp(state, val);
}
