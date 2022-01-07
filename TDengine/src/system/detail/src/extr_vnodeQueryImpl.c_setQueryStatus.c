
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_3__ {int over; } ;
typedef TYPE_1__ SQuery ;


 int QUERY_NOT_COMPLETED ;

void setQueryStatus(SQuery *pQuery, int8_t status) {
  if (status == QUERY_NOT_COMPLETED) {
    pQuery->over = status;
  } else {

    pQuery->over &= (~QUERY_NOT_COMPLETED);
    pQuery->over |= status;
  }
}
