
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OperationConfig {struct OperationConfig* prev; } ;


 int free (struct OperationConfig*) ;
 int free_config_fields (struct OperationConfig*) ;

void config_free(struct OperationConfig *config)
{
  struct OperationConfig *last = config;


  while(last) {
    struct OperationConfig *prev = last->prev;

    free_config_fields(last);
    free(last);

    last = prev;
  }
}
