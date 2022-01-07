
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_DATA_STRING ;
 int cb_count ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (void*,int ) ;

__attribute__((used)) static int
resolver_alloc_cb_pass(void *resolver_state, void *reserved, void *userdata)
{
  (void)resolver_state;
  (void)reserved;

  cb_count++;
  if(strcmp(userdata, TEST_DATA_STRING)) {
    fprintf(stderr, "Invalid test data received");
    exit(1);
  }

  return 0;
}
