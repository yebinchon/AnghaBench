
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ QUEUE_SIZE ;
 int RECV_SIZE ;
 int exit (int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (scalar_t__,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mutex ;
 int perror (char*) ;
 scalar_t__ qsize ;
 scalar_t__ queue ;
 int recv (int ,char*,int,int ) ;
 scalar_t__ running ;
 int sd ;
 int sleep (int ) ;

int recv_worker(void *arg) {
    char *data = malloc(sizeof(char) * RECV_SIZE);
    while (1) {
        int length;
        if ((length = recv(sd, data, RECV_SIZE - 1, 0)) <= 0) {
            if (running) {
                perror("recv");
                exit(1);
            }
            else {
                break;
            }
        }
        data[length] = '\0';
        while (1) {
            int done = 0;
            mtx_lock(&mutex);
            if (qsize + length < QUEUE_SIZE) {
                memcpy(queue + qsize, data, sizeof(char) * (length + 1));
                qsize += length;
                done = 1;
            }
            mtx_unlock(&mutex);
            if (done) {
                break;
            }
            sleep(0);
        }
    }
    free(data);
    return 0;
}
