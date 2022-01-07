
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Mutex* var ;
struct Mutex {int mutex; } ;


 int CloseHandle (int ) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void Mutex_Del(var self) {
  struct Mutex* m = self;





}
