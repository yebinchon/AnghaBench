
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 scalar_t__ q68_get_areg (int ,int,scalar_t__) ;
 scalar_t__ q68_get_dreg (int ,int) ;
 scalar_t__ q68_get_pc (int ,scalar_t__) ;
 scalar_t__ q68_get_sr (int ,scalar_t__) ;
 scalar_t__ q68_get_ssp (int ,scalar_t__) ;
 scalar_t__ q68_get_usp (int ,scalar_t__) ;
 int state ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

__attribute__((used)) static void m68kq68_save_state(FILE * fp)
{
   int i = 0;
   u32 val = 0;
   IOCheck_struct check = { 0, 0 };

   for (i = 0; i < 8; i++)
   {
      val = q68_get_dreg(state, i);
      ywrite(&check, (void *)&val, sizeof(u32), 1, fp);
   }

   for (i = 0; i < 8; i++)
   {
      val = q68_get_areg(state, i, val);
      ywrite(&check, (void *)&val, sizeof(u32), 1, fp);
   }

   val = q68_get_pc(state, val);
   ywrite(&check, (void *)&val, sizeof(u32), 1, fp);

   val = q68_get_sr(state, val);
   ywrite(&check, (void *)&val, sizeof(u32), 1, fp);

   val = q68_get_usp(state, val);
   ywrite(&check, (void *)&val, sizeof(u32), 1, fp);

   val = q68_get_ssp(state, val);
   ywrite(&check, (void *)&val, sizeof(u32), 1, fp);
}
