
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double VIDEOMODE_custom_stretch ;
 int VIDEOMODE_stretch ;

__attribute__((used)) static void UpdateCustomStretch(void)
{
 switch (VIDEOMODE_stretch) {
 case 128:
 case 132:
 case 131:
  VIDEOMODE_custom_stretch = (double)(VIDEOMODE_stretch + 1);
  break;
 case 129:
 case 130:
  VIDEOMODE_custom_stretch = 1.0;
  break;
 }
}
