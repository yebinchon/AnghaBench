
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loaded; unsigned char* palette; int filename; } ;
typedef int FILE ;
typedef TYPE_1__ COLOURS_EXTERNAL_t ;


 int EOF ;
 int FALSE ;
 int TRUE ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (int ,char*) ;

int COLOURS_EXTERNAL_Read(COLOURS_EXTERNAL_t *colours)
{
 FILE *fp;
 int i;
 unsigned char *pal_ptr;

 fp = fopen(colours->filename, "rb");
 if (fp == ((void*)0)) {
  colours->loaded = FALSE;
  return FALSE;
 }
 for (i = 0, pal_ptr = colours->palette; i < 768; i++) {
  int c = fgetc(fp);
  if (c == EOF) {
   fclose(fp);
   colours->loaded = FALSE;
   return FALSE;
  }
  *pal_ptr++ = c;
 }
 fclose(fp);
 colours->loaded = TRUE;
 return TRUE;
}
