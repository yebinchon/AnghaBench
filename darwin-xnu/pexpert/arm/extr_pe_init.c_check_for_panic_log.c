
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct embedded_panic_header {char eph_magic; } ;
typedef int DTEntry ;


 scalar_t__ DTGetProperty (int ,char*,void**,unsigned int*) ;
 scalar_t__ DTLookupEntry (int ,char*,int *) ;
 char EMBEDDED_PANIC_MAGIC ;
 uintptr_t PLATFORM_PANIC_LOG_PADDR ;
 void* PLATFORM_PANIC_LOG_SIZE ;
 int TRUE ;
 int bzero (void*,void*) ;
 scalar_t__ gPanicBase ;
 void* gPanicSize ;
 scalar_t__ kSuccess ;
 scalar_t__ ml_io_map_wcomb (uintptr_t,void*) ;
 int panic_console_available ;
 struct embedded_panic_header* panic_info ;
 void* panic_text_len ;
 int printf (char*) ;

__attribute__((used)) static void
check_for_panic_log(void)
{





 DTEntry entry, chosen;
 unsigned int size;
 uintptr_t *reg_prop;
 uint32_t *panic_region_length;




 if (kSuccess != DTLookupEntry(0, "pram", &entry))
  return;

 if (kSuccess != DTGetProperty(entry, "reg", (void **)&reg_prop, &size))
  return;

 if (kSuccess != DTLookupEntry(0, "/chosen", &chosen))
  return;

 if (kSuccess != DTGetProperty(chosen, "embedded-panic-log-size", (void **) &panic_region_length, &size))
  return;






 gPanicBase = ml_io_map_wcomb(reg_prop[0], panic_region_length[0]);


 panic_text_len = panic_region_length[0] - sizeof(struct embedded_panic_header);
 gPanicSize = panic_region_length[0];

 panic_info = (struct embedded_panic_header *)gPanicBase;


 if (panic_info->eph_magic == 'SHMC') {
  panic_console_available = TRUE;
  return;
 }


 if (panic_info->eph_magic == 'BTRC') {
  return;
 }




 if (panic_info->eph_magic == EMBEDDED_PANIC_MAGIC) {
  printf("iBoot didn't extract panic log from previous session crash, this is bad\n");
 }


 bzero((void *)gPanicBase, gPanicSize);
}
