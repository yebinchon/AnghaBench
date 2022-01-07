
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
typedef size_t u16_t ;
struct memp {struct memp* next; } ;
struct TYPE_4__ {TYPE_1__* memp; } ;
struct TYPE_3__ {scalar_t__ avail; scalar_t__ err; scalar_t__ max; scalar_t__ used; } ;


 int LWP_SemInit (int *,int,int) ;
 size_t MEMP_MAX ;
 scalar_t__ MEM_ALIGN (int *) ;
 size_t MEM_ALIGN_SIZE (scalar_t__) ;
 TYPE_2__ lwip_stats ;
 int * memp_memory ;
 scalar_t__* memp_num ;
 scalar_t__* memp_sizes ;
 struct memp** memp_tab ;
 int mutex ;

void
memp_init(void)
{
  struct memp *m, *memp;
  u16_t i, j;
  u16_t size;
  memp = (struct memp *)&memp_memory[0];
  for(i = 0; i < MEMP_MAX; ++i) {
    size = MEM_ALIGN_SIZE(memp_sizes[i] + sizeof(struct memp));
    if (memp_num[i] > 0) {
      memp_tab[i] = memp;
      m = memp;

      for(j = 0; j < memp_num[i]; ++j) {
  m->next = (struct memp *)MEM_ALIGN((u8_t *)m + size);
  memp = m;
  m = m->next;
      }
      memp->next = ((void*)0);
      memp = m;
    } else {
      memp_tab[i] = ((void*)0);
    }
  }


  LWP_SemInit(&mutex,1,1);


}
