
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_names ;



int sql_token_get_last_id() {
 return (sizeof(token_names)/sizeof(token_names[0])) - 1;
}
