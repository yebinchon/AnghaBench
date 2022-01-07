
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 int TYPE_POISON_GLOBAL ;
 int TYPE_POISON_HEAP ;
 int kasan_check_enabled (int ) ;

__attribute__((used)) static inline bool
kasan_poison_active(uint8_t flags)
{
 switch (flags) {
 case 132:
  return kasan_check_enabled(TYPE_POISON_GLOBAL);
 case 128:
 case 130:
 case 129:
 case 131:
  return kasan_check_enabled(TYPE_POISON_HEAP);
 default:
  return 1;
 };
}
