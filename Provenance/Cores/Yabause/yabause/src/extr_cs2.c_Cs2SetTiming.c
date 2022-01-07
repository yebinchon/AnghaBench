
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed1x; int _periodictiming; scalar_t__ isaudio; } ;


 TYPE_1__* Cs2Area ;

void Cs2SetTiming(int playing) {
  if (playing) {
     if (Cs2Area->isaudio || Cs2Area->speed1x == 1)
        Cs2Area->_periodictiming = 40000;
     else
        Cs2Area->_periodictiming = 20000;
  }
  else {
     Cs2Area->_periodictiming = 50000;
  }
}
