
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void MosaicSliderLabel(char *label, int value, void *user_data)
{
 sprintf(label, "%i KB", value * 4);
}
