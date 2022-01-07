
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; int buffMutex; int buffNotEmpty; } ;
typedef TYPE_1__ SLogBuff ;


 int free (int ) ;
 int pthread_mutex_destroy (int *) ;
 int tfree (TYPE_1__*) ;
 int tsem_destroy (int *) ;

void taosLogBuffDestroy(SLogBuff *tLogBuff) {
  tsem_destroy(&(tLogBuff->buffNotEmpty));
  pthread_mutex_destroy(&(tLogBuff->buffMutex));
  free(tLogBuff->buffer);
  tfree(tLogBuff);
}
