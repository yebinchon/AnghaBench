
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {int id; } ;
typedef TYPE_1__ SSdbTable ;



int64_t sdbGetId(void *handle) { return ((SSdbTable *)handle)->id; }
