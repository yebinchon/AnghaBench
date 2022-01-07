
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_message; int parent_name; int context_name; } ;


 int av_freep (int *) ;
 TYPE_1__* log_buffer ;
 int log_buffer_size ;
 int log_mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void clear_log(int need_lock)
{
    int i;

    if (need_lock)
        pthread_mutex_lock(&log_mutex);
    for (i=0; i<log_buffer_size; i++) {
        av_freep(&log_buffer[i].context_name);
        av_freep(&log_buffer[i].parent_name);
        av_freep(&log_buffer[i].log_message);
    }
    log_buffer_size = 0;
    if(need_lock)
        pthread_mutex_unlock(&log_mutex);
}
