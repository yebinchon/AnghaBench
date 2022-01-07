
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cnt; int pos; } ;


 int M ;
 int active_pos ;
 int exit (int) ;
 TYPE_1__* max ;
 int printf (char*,...) ;
 int random () ;

__attribute__((used)) static void
select_max(void)
{
 int i, m, c;

 m = max[0].cnt;

 if (max[0].cnt == 1)
 {
  printf("no solution!\n");
  exit(1);
 }
 c = 0;
 for (i = 0; i < M; i++)
 {
  if (m == max[i].cnt)
  {
   c++;
  }
 }

 i = random() % c;
 active_pos = max[i].pos;
 printf("0x%03X (%d) ", active_pos, max[i].cnt);
}
