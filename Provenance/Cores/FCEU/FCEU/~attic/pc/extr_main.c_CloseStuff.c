
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DriverKill () ;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void CloseStuff(int signum)
{
 DriverKill();
        printf("\nSignal %d has been caught and dealt with...\n",signum);
        switch(signum)
        {
         case 133:printf("How DARE you interrupt me!\n");break;
         case 130:printf("MUST TERMINATE ALL HUMANS\n");break;
         case 134:printf("Reach out and hang-up on someone.\n");break;
         case 132:printf("The pipe has broken!  Better watch out for floods...\n");break;
         case 131:printf("Iyeeeeeeeee!!!  A segmentation fault has occurred.  Have a fluffy day.\n");break;



         case 136:printf("I told you to be nice to the driver.\n");break;


         case 135:printf("Those darn floating points.  Ne'er know when they'll bite!\n");break;
         case 137:printf("Don't throw your clock at the meowing cats!\n");break;
         case 138:printf("Abort, Retry, Ignore, Fail?\n");break;
         case 129:
         case 128:printf("Killing your processes is not nice.\n");break;
        }
        exit(1);
}
