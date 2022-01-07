
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int range; } ;


 size_t Range_Len (int ) ;

__attribute__((used)) static size_t Slice_Len(var self) {
  struct Slice* s = self;
  return Range_Len(s->range);
}
