
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int O_BINARY ;
 int _O_BINARY ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;
 int fileno (int *) ;
 int setmode (int ,int ) ;
 int * stdin ;

FILE *get_binary_stdin_(void)
{
 return stdin;
}
