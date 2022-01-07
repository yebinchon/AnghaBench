
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* dev; } ;




 int MAX_DEVICES ;
 int gamepad_refresh (int) ;
 TYPE_1__ input ;
 int lightgun_refresh (int) ;

void input_refresh(void)
{
  int i;
  for (i=0; i<MAX_DEVICES; i++)
  {
    switch (input.dev[i])
    {
      case 128:
      {
        gamepad_refresh(i);
        break;
      }

      case 129:
      {
        lightgun_refresh(i);
        break;
      }
    }
  }
}
