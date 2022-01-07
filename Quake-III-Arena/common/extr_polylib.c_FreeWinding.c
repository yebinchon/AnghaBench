
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;


 int Error (char*) ;
 int c_active_windings ;
 int free (int *) ;
 int numthreads ;

void FreeWinding (winding_t *w)
{
 if (*(unsigned *)w == 0xdeaddead)
  Error ("FreeWinding: freed a freed winding");
 *(unsigned *)w = 0xdeaddead;

 if (numthreads == 1)
  c_active_windings--;
 free (w);
}
