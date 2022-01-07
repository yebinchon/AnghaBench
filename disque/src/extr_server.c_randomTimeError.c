
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstime_t ;


 int rand () ;

mstime_t randomTimeError(mstime_t milliseconds) {
    return rand()%milliseconds - milliseconds/2;
}
