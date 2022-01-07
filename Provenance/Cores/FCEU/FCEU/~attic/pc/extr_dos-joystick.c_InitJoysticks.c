
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConfigJoystick () ;
 int DetectJoystick () ;
 int UpdateJoyData () ;
 scalar_t__ joy ;
 int* joyBMap ;
 int joyx ;
 int joyxcenter ;
 int joyy ;
 int joyycenter ;
 int printf (char*) ;
 int soundjoyer ;
 int soundjoyeron ;
 scalar_t__ soundo ;

int InitJoysticks(void)
{
 if(!joy) return(0);
        if(!DetectJoystick())
        {
         printf("Joystick not detected!\n");
         joy=0;
         return 0;
        }
        if(soundo)
        {
         soundjoyeron=1;
         while(!soundjoyer);
        }
        else
         UpdateJoyData();

        joyxcenter=joyx;
        joyycenter=joyy;

        if(!(joyBMap[0]|joyBMap[1]|joyBMap[2]|joyBMap[3]))
         ConfigJoystick();
        return(1);
}
