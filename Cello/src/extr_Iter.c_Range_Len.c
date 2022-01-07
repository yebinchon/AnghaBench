
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Range* var ;
struct Range {int step; int stop; int start; } ;



__attribute__((used)) static size_t Range_Len(var self) {
  struct Range* r = self;
  if (r->step == 0) { return 0; }
  if (r->step > 0) { return ((r->stop-1) - r->start) / r->step + 1; }
  if (r->step < 0) { return ((r->stop-1) - r->start) / -r->step + 1; }
  return 0;
}
