
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Map* var ;
struct Map {int iter; } ;


 size_t len (int ) ;

__attribute__((used)) static size_t Map_Len(var self) {
  struct Map* m = self;
  return len(m->iter);
}
