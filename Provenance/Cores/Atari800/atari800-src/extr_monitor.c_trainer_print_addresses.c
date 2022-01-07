
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;
typedef scalar_t__ ULONG ;


 int get_hex (scalar_t__*) ;
 int printf (char*,...) ;
 scalar_t__* trainer_flags ;
 int * trainer_memory ;

__attribute__((used)) static void trainer_print_addresses(void)
{
 UWORD addr_count_max = 0;
 int addr_valid = get_hex(&addr_count_max);


 if (!addr_valid) {
  addr_count_max = 64;
 }

 if (trainer_memory != ((void*)0)) {
  long int count = 0;
  ULONG addr_count = 0;
  int i = 0;
  do {
   if (*(trainer_flags+count) != 0) {
    printf("%04X ", (UWORD) count);
    addr_count++;
    if (++i == 8) {
     printf("\n");
     i = 0;
    };
   };
  } while ((++count < 65536) && (addr_count < addr_count_max));
 printf("\n");
 } else {
  printf("Use tss first.\n");
 }
}
