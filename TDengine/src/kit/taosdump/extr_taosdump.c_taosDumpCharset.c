
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 int fwrite (char*,int ,int,int *) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 char* tsCharset ;

void taosDumpCharset(FILE *fp) {
  char charsetline[256];

  fseek(fp, 0, SEEK_SET);
  sprintf(charsetline, "#!%s\n", tsCharset);
  fwrite(charsetline, strlen(charsetline), 1, fp);
}
