
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fgetc (int *) ;

void get_token(FILE *pnm_file, char *token)
{
  int i = 0;
  int ret;


  do
  {
    ret = fgetc(pnm_file);
    if (ret == '#') {

      do
      {
        ret = fgetc(pnm_file);
      }
      while ((ret != '\n') && (ret != '\r') && (ret != EOF));
    }
    if (ret == EOF) break;
    token[i] = (unsigned char) ret;
  }
  while ((token[i] == '\n') || (token[i] == '\r') || (token[i] == ' '));


  do
  {
    ret = fgetc(pnm_file);
    if (ret == EOF) break;
    i++;
    token[i] = (unsigned char) ret;
  }
  while ((token[i] != '\n') && (token[i] != '\r') && (token[i] != ' '));

  token[i] = '\0';

  return;
}
