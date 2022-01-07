
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 char** joyparams ;
 size_t* joytypes ;
 int** keysets ;
 int printf (char*) ;
 scalar_t__ rename (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void save_config()
{
  FILE *fr;
  FILE *fw;
  char string[256];
  int i;

  if ((fr=fopen("atari800.cfg","r"))==((void*)0))
  {
    printf("Error opening atari800.cfg!\n");
    return;
  }
  if ((fw=fopen("atari800.tmp","w"))==((void*)0))
  {
    printf("Error creating temporary file atari800.tmp!\n");
    fclose(fr);
    return;
  }
  while (fgets(string,sizeof(string),fr))
  {
    if (strncmp(string,"JOYSTICK_",9)!=0 && strncmp(string,"KEYSET_",7)!=0)
      fputs(string,fw);
  }
  fclose(fr);
  i=strlen(string)-1;
  if (i>=0 && string[i]!='\n') fprintf(fw,"\n");
  for (i=0;i<4;i++)
    fprintf(fw,"KEYSET_%i=%i %i %i %i %i %i %i %i %i\n",i,
      keysets[i][0],keysets[i][1],keysets[i][2],keysets[i][3],
      keysets[i][4],keysets[i][5],keysets[i][6],keysets[i][7],
      keysets[i][8]);
  for (i=0;i<4;i++)
    fprintf(fw,"JOYSTICK_%i=%s\n",i,joyparams[joytypes[i]]);
  fclose(fw);
  if (rename("atari800.tmp","atari800.cfg")==0)
    printf("Configuration successfully saved.\n");
  else
    printf("Error when renaming atari800.tmp to atari800.cfg!\n");
}
