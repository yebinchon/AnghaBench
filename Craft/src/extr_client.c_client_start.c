
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_SIZE ;
 scalar_t__ calloc (int ,int) ;
 int client_enabled ;
 int exit (int) ;
 int mtx_init (int *,int ) ;
 int mtx_plain ;
 int mutex ;
 int perror (char*) ;
 scalar_t__ qsize ;
 char* queue ;
 int recv_thread ;
 int recv_worker ;
 int running ;
 scalar_t__ thrd_create (int *,int ,int *) ;
 scalar_t__ thrd_success ;

void client_start() {
    if (!client_enabled) {
        return;
    }
    running = 1;
    queue = (char *)calloc(QUEUE_SIZE, sizeof(char));
    qsize = 0;
    mtx_init(&mutex, mtx_plain);
    if (thrd_create(&recv_thread, recv_worker, ((void*)0)) != thrd_success) {
        perror("thrd_create");
        exit(1);
    }
}
