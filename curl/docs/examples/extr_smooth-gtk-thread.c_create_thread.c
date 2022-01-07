
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int GPOINTER_TO_INT (int ) ;
 int G_OBJECT (void*) ;
 int NUMT ;
 int fprintf (int ,char*,int,...) ;
 int g_object_get_data (int ,char*) ;
 int g_source_remove (int ) ;
 int gtk_widget_destroy (void*) ;
 int num_urls ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int pull_one_url ;
 int stderr ;
 char** urls ;

void *create_thread(void *progress_bar)
{
  pthread_t tid[NUMT];
  int i;


  for(i = 0; i < NUMT && i < num_urls ; i++) {
    int error = pthread_create(&tid[i],
                               ((void*)0),
                               pull_one_url,
                               ((void*)0));
    if(0 != error)
      fprintf(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      fprintf(stderr, "Thread %d, gets %s\n", i, urls[i]);
  }


  for(i = 0; i < NUMT && i < num_urls; i++) {
    pthread_join(tid[i], ((void*)0));
    fprintf(stderr, "Thread %d terminated\n", i);
  }



  g_source_remove(GPOINTER_TO_INT(g_object_get_data(G_OBJECT(progress_bar),
                                                    "pulse_id")));


  gtk_widget_destroy(progress_bar);





  return ((void*)0);

}
