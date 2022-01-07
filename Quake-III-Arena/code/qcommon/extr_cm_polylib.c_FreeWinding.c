
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int Z_Free (int *) ;
 int c_active_windings ;

void FreeWinding (winding_t *w)
{
 if (*(unsigned *)w == 0xdeaddead)
  Com_Error (ERR_FATAL, "FreeWinding: freed a freed winding");
 *(unsigned *)w = 0xdeaddead;

 c_active_windings--;
 Z_Free (w);
}
