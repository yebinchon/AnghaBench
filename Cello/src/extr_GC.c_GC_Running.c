
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct GC* var ;
struct GC {int running; } ;



__attribute__((used)) static bool GC_Running(var self) {
  struct GC* gc = self;
  return gc->running;
}
