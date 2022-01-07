
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; int nRef; scalar_t__ owner; int trace; int mutex; } ;
typedef TYPE_1__ sqlite3_mutex ;
typedef scalar_t__ pthread_t ;


 scalar_t__ SQLITE_MUTEX_RECURSIVE ;
 int assert (int) ;
 int printf (char*,TYPE_1__*,int,int) ;
 scalar_t__ pthreadMutexNotheld (TYPE_1__*) ;
 scalar_t__ pthread_equal (scalar_t__,scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 void* pthread_self () ;

__attribute__((used)) static void pthreadMutexEnter(sqlite3_mutex *p){
  assert( p->id==SQLITE_MUTEX_RECURSIVE || pthreadMutexNotheld(p) );
  pthread_mutex_lock(&p->mutex);
}
