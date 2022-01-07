
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int getpart (char**,size_t*,char*,char*,int ) ;
 int printf (char*,...) ;
 int stdin ;

int main(int argc, char **argv)
{
  char *part;
  size_t partlen;

  if(argc< 3) {
    printf("./testpart main sub\n");
  }
  else {
    int rc = getpart(&part, &partlen, argv[1], argv[2], stdin);
    size_t i;
    if(rc)
      return rc;
    for(i = 0; i < partlen; i++)
      printf("%c", part[i]);
    free(part);
  }
  return 0;
}
