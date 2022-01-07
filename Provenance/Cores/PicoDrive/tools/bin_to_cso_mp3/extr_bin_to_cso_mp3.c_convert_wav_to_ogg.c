
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int chdir (char*) ;
 int sprintf (char*,char*,char*) ;
 int system (char*) ;
 int unlink (char*) ;

void convert_wav_to_ogg(char *wav_file_name, char *output_dir,
 char *ogg_file_name)
{
  char cmd_string[(MAX_PATH * 2) + 16];

  chdir(output_dir);
  sprintf(cmd_string, "oggenc %s", wav_file_name);
  system(cmd_string);

  unlink(wav_file_name);
  chdir("..");
}
