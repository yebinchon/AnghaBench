
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; int mutex; } ;
typedef TYPE_1__ const sqlite3_mutex ;
typedef int pthread_mutexattr_t ;


 int ArraySize (TYPE_1__ const*) ;
 int PTHREAD_MUTEX_RECURSIVE ;



 int assert (int) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 TYPE_1__ const* sqlite3MallocZero (int) ;

__attribute__((used)) static sqlite3_mutex *pthreadMutexAlloc(int iType){
  static sqlite3_mutex staticMutexes[] = {
    130,
    130,
    130,
    130,
    130,
    130
  };
  sqlite3_mutex *p;
  switch( iType ){
    case 128: {
      p = sqlite3MallocZero( sizeof(*p) );
      if( p ){






        pthread_mutexattr_t recursiveAttr;
        pthread_mutexattr_init(&recursiveAttr);
        pthread_mutexattr_settype(&recursiveAttr, PTHREAD_MUTEX_RECURSIVE);
        pthread_mutex_init(&p->mutex, &recursiveAttr);
        pthread_mutexattr_destroy(&recursiveAttr);




      }
      break;
    }
    case 129: {
      p = sqlite3MallocZero( sizeof(*p) );
      if( p ){



        pthread_mutex_init(&p->mutex, 0);
      }
      break;
    }
    default: {
      assert( iType-2 >= 0 );
      assert( iType-2 < ArraySize(staticMutexes) );
      p = &staticMutexes[iType-2];



      break;
    }
  }
  return p;
}
