
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int UWORD ;
typedef int FILE ;


 int Util_chomp (char*) ;
 int add_user_label (char*,int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free_user_labels () ;
 int perror (char const*) ;
 int printf (char*,...) ;
 int symtable_user_size ;

__attribute__((used)) static void load_user_labels(const char *filename)
{
 FILE *fp;
 char line[256];
 if (filename == ((void*)0)) {
  printf("You must specify a filename\n");
  return;
 }


 fp = fopen(filename, "rb");
 if (fp == ((void*)0)) {
  perror(filename);
  return;
 }
 free_user_labels();
 while (fgets(line, sizeof(line), fp)) {
  char *p;
  unsigned int value = 0;
  int digits = 0;


  for (p = line; *p != '\0'; p++) {
   if (*p >= '0' && *p <= '9') {
    value = (value << 4) + *p - '0';
    digits++;
   }
   else if (*p >= 'A' && *p <= 'F') {
    value = (value << 4) + *p - 'A' + 10;
    digits++;
   }
   else if (*p >= 'a' && *p <= 'f') {
    value = (value << 4) + *p - 'a' + 10;
    digits++;
   }
   else if (digits >= 4)
    break;
   else if (*p == '-')
    break;
   else {

    value = 0;
    digits = 0;
   }
  }
  if (*p != ' ' && *p != '\t')
   continue;
  if (value > 0xffff || digits > 8)
   continue;
  do
   p++;
  while (*p == ' ' || *p == '\t');
  Util_chomp(p);
  if (*p == '\0')
   continue;
  add_user_label(p, (UWORD) value);
 }
 fclose(fp);
 printf("Loaded %d labels\n", symtable_user_size);
}
