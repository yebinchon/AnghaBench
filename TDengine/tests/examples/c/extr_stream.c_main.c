
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sql ;
typedef int pthread_t ;
struct TYPE_5__ {char* server_ip; char* db_name; char* tbl_name; } ;
typedef TYPE_1__ param ;
typedef int TAOS_STREAM ;
typedef int TAOS ;


 int exit (int) ;
 int fgets (char*,int,int ) ;
 int free (TYPE_1__*) ;
 int g_thread_exit_flag ;
 int getchar () ;
 scalar_t__ insert_rows ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,void* (*) (void*),TYPE_1__*) ;
 int pthread_join (int ,int *) ;
 int sleep (int) ;
 int stdin ;
 int strcpy (char*,char*) ;
 int streamCallBack ;
 int taos_close (int *) ;
 int taos_close_stream (int *) ;
 int * taos_connect (char*,char*,char*,char*,int ) ;
 int taos_init () ;
 int * taos_open_stream (int *,char*,int ,int ,int *,int *) ;

int main(int argc, char *argv[])
{
  TAOS *taos;
  char db_name[64];
  char tbl_name[64];
  char sql[1024] = { 0 };

  if (argc != 4) {
    printf("usage: %s server-ip dbname tblname\n", argv[0]);
    exit(0);
  }


  taos_init();

  strcpy(db_name, argv[2]);
  strcpy(tbl_name, argv[3]);


  param *t_param = (param *)malloc(sizeof(param));
  if (((void*)0) == t_param)
  {
    printf("failed to malloc\n");
    exit(1);
  }
  memset(t_param, 0, sizeof(param));
  strcpy(t_param->server_ip, argv[1]);
  strcpy(t_param->db_name, db_name);
  strcpy(t_param->tbl_name, tbl_name);

  pthread_t pid;
  pthread_create(&pid, ((void*)0), (void * (*)(void *))insert_rows, t_param);

  sleep(3);

  taos = taos_connect(argv[1], "root", "taosdata", db_name, 0);
  if (taos == ((void*)0)) {
    printf("failed to connet to server:%s\n", argv[1]);
   free(t_param);
    exit(1);
  }


  printf("please input stream SQL:[e.g., select count(*) from tblname interval(5s) sliding(2s);]\n");
  fgets(sql, sizeof(sql), stdin);
  if (sql[0] == 0) {
    printf("input NULL stream SQL, so exit!\n");
    free(t_param);
    exit(1);
  }


  TAOS_STREAM *pStream = taos_open_stream(taos, sql, streamCallBack, 0, ((void*)0), ((void*)0));
  if (((void*)0) == pStream) {
    printf("failed to create stream\n");
    free(t_param);
    exit(1);
  }

  printf("presss any key to exit\n");
  getchar();

  taos_close_stream(pStream);

  g_thread_exit_flag = 1;
  pthread_join(pid, ((void*)0));

  taos_close(taos);
  free(t_param);

  return 0;
}
