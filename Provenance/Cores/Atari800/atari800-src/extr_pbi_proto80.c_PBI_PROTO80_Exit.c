
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 scalar_t__ PBI_PROTO80_enabled ;
 int free (int ) ;
 int proto80rom ;

void PBI_PROTO80_Exit(void)
{
 if (PBI_PROTO80_enabled) {
  free(proto80rom);
  PBI_PROTO80_enabled = FALSE;
 }
}
