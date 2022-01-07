
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint32_t ;
typedef int no_dockfifo_uart ;
typedef int no_dockchannel_uart ;
typedef int is_pi3 ;
typedef int dccmode ;
struct TYPE_9__ {int (* uart_init ) () ;} ;
typedef int * DTEntry ;


 scalar_t__ BCM2837_AUX_BASE ;
 uintptr_t BCM2837_AUX_SIZE ;
 scalar_t__ BCM2837_GPIO_BASE ;
 uintptr_t BCM2837_GPIO_SIZE ;
 scalar_t__ DOCKCHANNEL_DRAIN_PERIOD ;
 scalar_t__ DTFindEntry (char*,char*,int **) ;
 int DTGetProperty (int *,char*,void**,scalar_t__*) ;
 scalar_t__ PE_parse_boot_argn (char*,scalar_t__*,int) ;
 TYPE_1__ dcc_serial_functions ;
 void* dock_agent_base ;
 TYPE_1__ dockchannel_uart_serial_functions ;
 TYPE_1__ dockfifo_uart_serial_functions ;
 scalar_t__ dt_pclk ;
 scalar_t__ dt_sampling ;
 scalar_t__ dt_ubrdiv ;
 TYPE_1__* gPESF ;
 scalar_t__ kSuccess ;
 int kprintf (char*) ;
 TYPE_1__ ln2410_serial_functions ;
 scalar_t__ max_dockchannel_drain_period ;
 void* ml_io_map (scalar_t__,uintptr_t) ;
 int panic (char*) ;
 scalar_t__ pe_arm_get_soc_base_phys () ;
 void* pi3_aux_base_vaddr ;
 void* pi3_gpio_base_vaddr ;
 TYPE_1__ pi3_uart_serial_functions ;
 TYPE_1__ shmcon_serial_functions ;
 int strcmp (char*,char*) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int stub5 () ;
 int stub6 () ;
 TYPE_1__ uart16x50_serial_functions ;
 void* uart_base ;
 int uart_initted ;
 scalar_t__ use_sw_drain ;

int
serial_init(void)
{
 DTEntry entryP = ((void*)0);
 uint32_t prop_size, dccmode;
 vm_offset_t soc_base;
 uintptr_t *reg_prop;
 uint32_t *prop_value = ((void*)0);
 char *serial_compat = 0;
 if (uart_initted && gPESF) {
  gPESF->uart_init();
  kprintf("reinit serial\n");
  return 1;
 }

 dccmode = 0;
 if (PE_parse_boot_argn("dcc", &dccmode, sizeof (dccmode))) {
  gPESF = &dcc_serial_functions;
  uart_initted = 1;
  return 1;
 }
 soc_base = pe_arm_get_soc_base_phys();

 if (soc_base == 0)
  return 0;
 if (DTFindEntry("boot-console", ((void*)0), &entryP) == kSuccess) {
  DTGetProperty(entryP, "reg", (void **)&reg_prop, &prop_size);
  uart_base = ml_io_map(soc_base + *reg_prop, *(reg_prop + 1));
  if (serial_compat == 0)
   DTGetProperty(entryP, "compatible", (void **)&serial_compat, &prop_size);
 } else if (DTFindEntry("name", "uart0", &entryP) == kSuccess) {
  DTGetProperty(entryP, "reg", (void **)&reg_prop, &prop_size);
  uart_base = ml_io_map(soc_base + *reg_prop, *(reg_prop + 1));
  if (serial_compat == 0)
   DTGetProperty(entryP, "compatible", (void **)&serial_compat, &prop_size);
 } else if (DTFindEntry("name", "uart1", &entryP) == kSuccess) {
  DTGetProperty(entryP, "reg", (void **)&reg_prop, &prop_size);
  uart_base = ml_io_map(soc_base + *reg_prop, *(reg_prop + 1));
  if (serial_compat == 0)
   DTGetProperty(entryP, "compatible", (void **)&serial_compat, &prop_size);
 }
 else
  return 0;

 gPESF->uart_init();

 uart_initted = 1;

 return 1;
}
