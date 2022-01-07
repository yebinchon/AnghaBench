
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct bintime {scalar_t__ frac; int sec; } ;



__attribute__((used)) static __inline void
bintime_addx(struct bintime *_bt, uint64_t _x)
{
 uint64_t _u;

 _u = _bt->frac;
 _bt->frac += _x;
 if (_u > _bt->frac)
  _bt->sec++;
}
