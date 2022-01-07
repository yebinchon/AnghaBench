
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t compressedSize; int parameters; scalar_t__ dictSize; int * dict; scalar_t__ liveJobs; int cond; int mutex; } ;
typedef TYPE_1__ COVER_best_t ;


 int ZSTD_pthread_cond_init (int *,int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;
 int memset (int *,int ,int) ;

void COVER_best_init(COVER_best_t *best) {
  if (best==((void*)0)) return;
  (void)ZSTD_pthread_mutex_init(&best->mutex, ((void*)0));
  (void)ZSTD_pthread_cond_init(&best->cond, ((void*)0));
  best->liveJobs = 0;
  best->dict = ((void*)0);
  best->dictSize = 0;
  best->compressedSize = (size_t)-1;
  memset(&best->parameters, 0, sizeof(best->parameters));
}
