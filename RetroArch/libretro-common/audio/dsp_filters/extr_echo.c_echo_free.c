
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echo_data {unsigned int num_channels; struct echo_data* channels; struct echo_data* buffer; } ;


 int free (struct echo_data*) ;

__attribute__((used)) static void echo_free(void *data)
{
   unsigned i;
   struct echo_data *echo = (struct echo_data*)data;

   for (i = 0; i < echo->num_channels; i++)
      free(echo->channels[i].buffer);
   free(echo->channels);
   free(echo);
}
