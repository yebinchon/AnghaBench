
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int alloc; int size; int * buf; } ;
typedef TYPE_1__ hb_tx3g_output_buf_t ;


 int free (int *) ;
 int hb_error (char*) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int check_realloc_output(hb_tx3g_output_buf_t * output, int size)
{
    if (output->alloc < size)
    {
        uint8_t * tmp;

        output->alloc = size + 1024;
        output->size = size;
        tmp = realloc(output->buf, output->alloc);
        if (tmp == ((void*)0))
        {
            hb_error("realloc failed!");
            free(output->buf);
            output->size = 0;
            output->alloc = 0;
            output->buf = ((void*)0);
            return 0;
        }
        output->buf = tmp;
    }
    return 1;
}
