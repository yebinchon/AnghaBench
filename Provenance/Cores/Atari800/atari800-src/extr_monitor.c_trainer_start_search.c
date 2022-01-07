
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;


 scalar_t__ MEMORY_SafeGetByte (scalar_t__) ;
 int get_hex (scalar_t__*) ;
 scalar_t__* malloc (int) ;
 int printf (char*) ;
 int* trainer_flags ;
 scalar_t__* trainer_memory ;

__attribute__((used)) static void trainer_start_search(void)
{
 UWORD trainer_value = 0;
 int value_valid = get_hex(&trainer_value);


 if (trainer_memory == ((void*)0)) {
  trainer_memory = malloc(65536*2);
  if (trainer_memory != ((void*)0)) {
   trainer_flags = trainer_memory + 65536;
  } else {
   printf("Memory allocation failed!\n"
   "Trainer not available.\n");
  }
 }
 if (trainer_memory != ((void*)0)) {

  long int count = 65535;
  do {
   *(trainer_memory+count) = MEMORY_SafeGetByte((UWORD) count);
   *(trainer_flags+count) = 0xff;
  } while (--count > -1);
  if (value_valid) {
   count = 65535;
   do {
    if (trainer_value != *(trainer_memory+count)) {
     *(trainer_flags+count) = 0;
    }
   } while (--count > -1);
  }
 }
}
