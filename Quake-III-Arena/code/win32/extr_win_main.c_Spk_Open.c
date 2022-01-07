
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IREAD ;
 int S_IWRITE ;
 int fh ;
 int open (char*,int,int) ;

void Spk_Open(char *name)
{
  fh = open( name, O_TRUNC | O_CREAT | O_WRONLY, S_IREAD | S_IWRITE );
}
