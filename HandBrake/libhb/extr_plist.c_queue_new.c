
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue_t ;


 int * calloc (int,int) ;

queue_t * queue_new()
{
    return calloc(1, sizeof(queue_t));
}
