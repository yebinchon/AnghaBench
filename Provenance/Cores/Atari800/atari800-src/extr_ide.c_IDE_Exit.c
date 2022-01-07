
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;


 scalar_t__ FALSE ;
 scalar_t__ IDE_enabled ;
 TYPE_1__ device ;
 int fclose (int ) ;

void IDE_Exit(void)
{
 if (IDE_enabled) {
  fclose(device.file);
  IDE_enabled = FALSE;
 }
}
