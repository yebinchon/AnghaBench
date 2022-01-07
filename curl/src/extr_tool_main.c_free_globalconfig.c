
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GlobalConfig {int libcurl; int * trace_stream; scalar_t__ trace_fopened; int * errors; scalar_t__ errors_fopened; int trace_dump; } ;


 int Curl_safefree (int ) ;
 int fclose (int *) ;

__attribute__((used)) static void free_globalconfig(struct GlobalConfig *config)
{
  Curl_safefree(config->trace_dump);

  if(config->errors_fopened && config->errors)
    fclose(config->errors);
  config->errors = ((void*)0);

  if(config->trace_fopened && config->trace_stream)
    fclose(config->trace_stream);
  config->trace_stream = ((void*)0);

  Curl_safefree(config->libcurl);
}
