
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Frame () ;
 int Com_Init (int,char**) ;

void main (int argc, char **argv) {
 Com_Init (argc, argv);

 while (1) {
  Com_Frame( );
 }
}
