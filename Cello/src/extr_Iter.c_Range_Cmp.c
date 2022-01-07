
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Range* var ;
struct Range {int start; } ;
typedef int int64_t ;


 int Range ;
 struct Range* cast (struct Range*,int ) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int Range_Cmp(var self, var obj) {
  struct Range* r = self;
  struct Range* o = cast(obj, Range);
  return memcmp(&r->start, &o->start, sizeof(int64_t) * 3);
}
