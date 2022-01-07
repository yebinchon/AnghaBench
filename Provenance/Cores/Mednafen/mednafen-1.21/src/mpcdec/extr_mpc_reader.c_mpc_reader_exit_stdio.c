
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; int p_file; } ;
typedef TYPE_1__ mpc_reader_stdio ;
struct TYPE_6__ {int * data; } ;
typedef TYPE_2__ mpc_reader ;


 scalar_t__ STDIO_MAGIC ;
 int fclose (int ) ;
 int free (TYPE_1__*) ;

void
mpc_reader_exit_stdio(mpc_reader *p_reader)
{
    mpc_reader_stdio *p_stdio = (mpc_reader_stdio*) p_reader->data;
    if(p_stdio->magic != STDIO_MAGIC) return;
    fclose(p_stdio->p_file);
    free(p_stdio);
    p_reader->data = ((void*)0);
}
