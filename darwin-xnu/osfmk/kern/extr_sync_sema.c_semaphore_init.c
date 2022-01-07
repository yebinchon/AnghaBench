
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int dummy; } ;


 int TRUE ;
 int Z_NOENCRYPT ;
 int semaphore_max ;
 int semaphore_zone ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
semaphore_init(void)
{
  semaphore_zone = zinit(sizeof(struct semaphore),
   semaphore_max * sizeof(struct semaphore),
   sizeof(struct semaphore),
   "semaphores");
  zone_change(semaphore_zone, Z_NOENCRYPT, TRUE);
}
