
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fo ;
 int fprintf (int ,char*,int,int,int,int,int,int,int,int) ;
 int* pattern_db ;

__attribute__((used)) static int check_label(unsigned char i)
{
 if (!pattern_db[i]) {
  fprintf(fo, "tile%i%i%i%i%i%i%i%i:\n", (i&0x80)?1:0, (i&0x40)?1:0, (i&0x20)?1:0, (i&0x10)?1:0,
   (i&0x08)?1:0, (i&0x04)?1:0, (i&0x02)?1:0, (i&0x01)?1:0);
  pattern_db[i] = 1;
  return 0;
 }

 return 1;
}
