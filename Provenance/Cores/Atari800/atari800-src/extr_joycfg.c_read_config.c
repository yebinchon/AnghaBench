
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int FILE ;


 int JOYSTICKTYPES ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int * joyparams ;
 int* joytypes ;
 int** keysets ;
 int printf (char*,...) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void read_config()
{
  FILE *fr;
  char string[256];
  char *ptr;
  int i,no;
  int bad=0;

  if ((fr=fopen("atari800.cfg","r"))==((void*)0))
  {
    printf("Error opening configuration file.\n"
           "Execute this utility from atari800 dir after configuring it!\n");
    exit(1);
  }
  while (fgets(string,sizeof(string),fr))
  {
    i=strlen(string);
    if (i >= 2 && string[i-2]=='\r' && string[i-1]=='\n') string[i-2]='\0';
    else if (i >= 1 && (string[i-1]=='\n' || string[i-1]=='\r')) string[i-1]='\0';
    ptr=strchr(string,'=');
    if (ptr)
    {
      *ptr++='\0';
      if (strncmp(string,"JOYSTICK_",9)==0)
      {
        no=string[9]-'0';
        if (no<0 || no>3) {printf("Error in config lines: %s\n",string);bad=1;}
        else{
          for (i=0;i<JOYSTICKTYPES;i++)
            if (strcmp(ptr,joyparams[i])==0) {
              joytypes[no]=i;
              break;
            }
          if (i==JOYSTICKTYPES) {printf("Unrecognized joystick type %s\n",ptr);bad=1;}
        }
      }else
      if (strncmp(string,"KEYSET_",7)==0)
      {
        no=string[7]-'0';
        if (no<0 || no>4) {printf("Error in config line: %s\n",string);bad=1;}
        else
        {
          i=sscanf(ptr,"%d %d %d %d %d %d %d %d %d",keysets[no]+0,keysets[no]+1,
                 keysets[no]+2,keysets[no]+3,keysets[no]+4,keysets[no]+5,
                 keysets[no]+6,keysets[no]+7,keysets[no]+8);
          if (i!=9) {printf("Not enough parametres for KEYSET_x: %s\n",ptr);bad=1;}
          for (i=0;i<9;i++)
            if (keysets[no][i]<0 || keysets[no][i]>255)
            {
              keysets[no][i]=255;
              printf("Invalid %i. scancode in KEYSET parameter: %s\n",i+1,ptr);
              bad=1;
            }
        }
      }
    }
  }
  fclose(fr);
  if (bad)
    exit(1);
}
