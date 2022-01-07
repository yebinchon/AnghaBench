
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nRef; scalar_t__ id; int trace; int mutex; scalar_t__ owner; } ;
typedef TYPE_1__ sqlite3_mutex ;


 scalar_t__ SQLITE_MUTEX_RECURSIVE ;
 int assert (int) ;
 int printf (char*,TYPE_1__*,int,scalar_t__) ;
 int pthreadMutexHeld (TYPE_1__*) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void pthreadMutexLeave(sqlite3_mutex *p){
  assert( pthreadMutexHeld(p) );




  assert( p->nRef==0 || p->id==SQLITE_MUTEX_RECURSIVE );






  pthread_mutex_unlock(&p->mutex);







}
