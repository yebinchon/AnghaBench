
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_1__ job ;
struct TYPE_6__ {int jobs; } ;


 int C_ERR ;
 int C_OK ;
 int DICT_ERR ;
 int dictAdd (int ,int ,int *) ;
 TYPE_3__ server ;
 int updateJobAwakeTime (TYPE_1__*,int ) ;

int registerJob(job *j) {
    int retval = dictAdd(server.jobs, j->id, ((void*)0));
    if (retval == DICT_ERR) return C_ERR;

    updateJobAwakeTime(j,0);
    return C_OK;
}
