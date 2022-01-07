
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int localkey_t ;
typedef int buffer_t ;


 scalar_t__ LK_LAST ;
 int * calloc (size_t,int) ;
 int free (int *) ;
 char* get_buffer (int *,long) ;
 scalar_t__ pthread_getspecific (int ) ;
 scalar_t__ pthread_setspecific (int ,void*) ;
 int thdkey ;

__attribute__((used)) static char *
buffer_threaded(localkey_t key, long size)

{
  buffer_t * bufs;





  bufs = (buffer_t *) pthread_getspecific(thdkey);

  if(!bufs) {
    if(size < 0)
      return (char *) ((void*)0);



    bufs = calloc((size_t) LK_LAST, sizeof(*bufs));
    if(!bufs)
      return (char *) ((void*)0);

    if(pthread_setspecific(thdkey, (void *) bufs)) {
      free(bufs);
      return (char *) ((void*)0);
    }
  }

  return get_buffer(bufs + key, size);
}
