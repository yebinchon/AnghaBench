
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_decoder ;


 int free (int *) ;

void mpc_decoder_exit(mpc_decoder *d)
{
 free(d);
}
