
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BConfig (int) ;
 int getchar () ;
 int printf (char*,...) ;

__attribute__((used)) static void ConfigJoystick(void)
{
 static char *genb="** Press button for ";

 printf("\n\n Joystick button configuration:\n\n");
 printf("   Push and release the button to map to the virtual joystick.\n");
 printf("   If you do not wish to assign a button, wait a few seconds\n");
 printf("   and the configuration will continue.\n\n");
 printf("   Press enter to continue...\n");
 getchar();

 printf("%s\"Select\".\n",genb);
 BConfig(2);

 printf("%s\"Start\".\n",genb);
 BConfig(3);

 printf("%s\"B\".\n",genb);
 BConfig(1);

 printf("%s\"A\".\n",genb);
 BConfig(0);

 printf("%s\"Rapid fire B\".\n",genb);
 BConfig(5);

 printf("%s\"Rapid fire A\".\n",genb);
 BConfig(4);

}
