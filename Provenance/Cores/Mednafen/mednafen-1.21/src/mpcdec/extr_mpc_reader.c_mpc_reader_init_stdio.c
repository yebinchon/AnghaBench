
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_status ;
typedef int mpc_reader ;
typedef int FILE ;


 int MPC_STATUS_FAIL ;
 int * fopen (char const*,char*) ;
 int mpc_reader_init_stdio_stream (int *,int *) ;

mpc_status
mpc_reader_init_stdio(mpc_reader *p_reader, const char *filename)
{
 FILE * stream = fopen(filename, "rb");
 if (stream == ((void*)0)) return MPC_STATUS_FAIL;
 return mpc_reader_init_stdio_stream(p_reader,stream);
}
