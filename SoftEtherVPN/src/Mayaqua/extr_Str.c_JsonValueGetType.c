
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ JSON_VALUE ;


 int JSON_TYPE_ERROR ;

UINT JsonValueGetType(JSON_VALUE *value) {
 return value ? value->type : JSON_TYPE_ERROR;
}
