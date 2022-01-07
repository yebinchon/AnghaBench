
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bool_gen {unsigned int* seed; int lock; scalar_t__ state; } ;


 int RANDOM_BOOL_GEN_SEED_COUNT ;
 scalar_t__ early_random () ;
 int simple_lock_init (int *,int ) ;

void
random_bool_init(struct bool_gen * bg)
{

 for (int i = 0; i < RANDOM_BOOL_GEN_SEED_COUNT; i++) {
  bg->seed[i] = (unsigned int)early_random();
 }
 bg->state = 0;
 simple_lock_init(&bg->lock, 0);
}
