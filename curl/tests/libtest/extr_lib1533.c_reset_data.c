
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_data {int remaining_bytes; scalar_t__ paused; scalar_t__ response_received; int * easy_handle; } ;
typedef int CURL ;



__attribute__((used)) static void reset_data(struct cb_data *data, CURL *curl)
{
  data->easy_handle = curl;
  data->response_received = 0;
  data->paused = 0;
  data->remaining_bytes = 3;
}
