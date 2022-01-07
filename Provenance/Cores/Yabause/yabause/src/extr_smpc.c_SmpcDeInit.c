
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * SmpcInternalVars ;
 int * SmpcRegsT ;
 int free (int *) ;

void SmpcDeInit(void) {
   if (SmpcRegsT)
      free(SmpcRegsT);
   SmpcRegsT = ((void*)0);

   if (SmpcInternalVars)
      free(SmpcInternalVars);
   SmpcInternalVars = ((void*)0);
}
