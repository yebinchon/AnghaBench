
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPLOADTHIS ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcpy (void*,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static size_t readcallback(void *ptr,
                           size_t size,
                           size_t nmemb,
                           void *clientp)
{
  int *counter = (int *)clientp;

  if(*counter) {

    fprintf(stderr, "READ ALREADY DONE!\n");
    return 0;
  }
  (*counter)++;

  if(size * nmemb > strlen(UPLOADTHIS)) {
    fprintf(stderr, "READ!\n");
    strcpy(ptr, UPLOADTHIS);
    return strlen(UPLOADTHIS);
  }
  fprintf(stderr, "READ NOT FINE!\n");
  return 0;
}
