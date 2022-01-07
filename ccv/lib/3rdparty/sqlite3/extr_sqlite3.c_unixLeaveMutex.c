
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_mutex_leave (int ) ;
 int unixBigLock ;

__attribute__((used)) static void unixLeaveMutex(void){
  sqlite3_mutex_leave(unixBigLock);
}
