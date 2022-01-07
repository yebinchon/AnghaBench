
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Mutex* var ;
struct Mutex {int mutex; } ;


 int CreateMutex (int *,int,int *) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void Mutex_New(var self, var args) {
  struct Mutex* m = self;





}
