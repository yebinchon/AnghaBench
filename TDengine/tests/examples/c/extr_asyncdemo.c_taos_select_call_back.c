
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ STable ;


 int exit (int) ;
 int printf (char*,char*,int) ;
 int taos_fetch_rows_a (int *,int ,TYPE_1__*) ;
 int taos_retrieve_call_back ;

void taos_select_call_back(void *param, TAOS_RES *tres, int code)
{
  STable *pTable = (STable *)param;

  if (code == 0 && tres) {

    taos_fetch_rows_a(tres, taos_retrieve_call_back, pTable);



  }
  else {
    printf("%s select failed, code:%d\n", pTable->name, code);
    exit(1);
  }
}
