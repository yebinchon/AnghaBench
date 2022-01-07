
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {scalar_t__ output; } ;


 size_t fwrite (char*,size_t,size_t,scalar_t__) ;
 scalar_t__ stdout ;

__attribute__((used)) static size_t write_it(char *buff, size_t size, size_t nmemb,
                       void *cb_data)
{
  struct callback_data *data = cb_data;
  size_t written = 0;
  if(data->output)
    written = fwrite(buff, size, nmemb, data->output);
  else

    written = fwrite(buff, size, nmemb, stdout);
  return written;
}
