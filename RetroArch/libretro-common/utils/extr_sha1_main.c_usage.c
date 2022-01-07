
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void usage(void)
{
   printf("usage: sha <file> [<file> ...]\n");
   printf("\tThis program will display the message digest\n");
   printf("\tfor files using the Secure Hashing Algorithm (SHA-1).\n");
}
