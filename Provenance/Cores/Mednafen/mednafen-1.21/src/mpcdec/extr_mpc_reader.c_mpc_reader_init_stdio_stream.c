
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mpc_status ;
struct TYPE_7__ {int file_size; int * p_file; int tell; int seek; int read; int get_size; int canseek; struct TYPE_7__* data; int is_seekable; int magic; } ;
typedef TYPE_1__ mpc_reader_stdio ;
typedef TYPE_1__ mpc_reader ;
typedef int FILE ;


 int MPC_STATUS_FAIL ;
 int MPC_STATUS_OK ;
 int MPC_TRUE ;
 int SEEK_END ;
 int SEEK_SET ;
 int STDIO_MAGIC ;
 int canseek_stdio ;
 int fclose (int *) ;
 int free (TYPE_1__*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int get_size_stdio ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int read_stdio ;
 int seek_stdio ;
 int tell_stdio ;

mpc_status
mpc_reader_init_stdio_stream(mpc_reader * p_reader, FILE * p_file)
{
    mpc_reader tmp_reader; mpc_reader_stdio *p_stdio; int err;

    p_stdio = ((void*)0);
    memset(&tmp_reader, 0, sizeof tmp_reader);
    p_stdio = malloc(sizeof *p_stdio);
    if(!p_stdio) return MPC_STATUS_FAIL;
    memset(p_stdio, 0, sizeof *p_stdio);

    p_stdio->magic = STDIO_MAGIC;
    p_stdio->p_file = p_file;
    p_stdio->is_seekable = MPC_TRUE;
    err = fseek(p_stdio->p_file, 0, SEEK_END);
    if(err < 0) goto clean;
    err = ftell(p_stdio->p_file);
    if(err < 0) goto clean;
    p_stdio->file_size = err;
    err = fseek(p_stdio->p_file, 0, SEEK_SET);
    if(err < 0) goto clean;

    tmp_reader.data = p_stdio;
    tmp_reader.canseek = canseek_stdio;
    tmp_reader.get_size = get_size_stdio;
    tmp_reader.read = read_stdio;
    tmp_reader.seek = seek_stdio;
    tmp_reader.tell = tell_stdio;

    *p_reader = tmp_reader;
    return MPC_STATUS_OK;
clean:
    if(p_stdio && p_stdio->p_file)
        fclose(p_stdio->p_file);
    free(p_stdio);
    return MPC_STATUS_FAIL;
}
