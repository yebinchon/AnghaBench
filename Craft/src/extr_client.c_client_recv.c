
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bytes_received ;
 int client_enabled ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mutex ;
 int qsize ;
 char* queue ;

char *client_recv() {
    if (!client_enabled) {
        return 0;
    }
    char *result = 0;
    mtx_lock(&mutex);
    char *p = queue + qsize - 1;
    while (p >= queue && *p != '\n') {
        p--;
    }
    if (p >= queue) {
        int length = p - queue + 1;
        result = malloc(sizeof(char) * (length + 1));
        memcpy(result, queue, sizeof(char) * length);
        result[length] = '\0';
        int remaining = qsize - length;
        memmove(queue, p + 1, remaining);
        qsize -= length;
        bytes_received += length;
    }
    mtx_unlock(&mutex);
    return result;
}
