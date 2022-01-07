
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_ROW ;
typedef int TAOS_RES ;
typedef int TAOS_FIELD ;


 int printf (char*,char*) ;
 int * taos_fetch_fields (int *) ;
 int taos_num_fields (int *) ;
 int taos_print_row (char*,int ,int *,int) ;

void streamCallBack(void *param, TAOS_RES *res, TAOS_ROW row)
{

  char temp[128];

  TAOS_FIELD *fields = taos_fetch_fields(res);
  int numFields = taos_num_fields(res);

  taos_print_row(temp, row, fields, numFields);

  printf("\n%s\n", temp);
}
