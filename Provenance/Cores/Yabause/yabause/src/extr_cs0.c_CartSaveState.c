
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int carttype; } ;
typedef int FILE ;


 TYPE_1__* CartridgeArea ;
 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int fwrite (void*,int,int,int *) ;

int CartSaveState(FILE * fp)
{
   int offset;

   offset = StateWriteHeader(fp, "CART", 1);


   fwrite((void *)&CartridgeArea->carttype, 4, 1, fp);



   return StateFinishHeader(fp, offset);
}
