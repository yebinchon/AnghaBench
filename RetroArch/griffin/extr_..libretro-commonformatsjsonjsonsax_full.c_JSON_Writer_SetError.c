
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
typedef TYPE_1__* JSON_Writer ;
typedef int Error ;



__attribute__((used)) static void JSON_Writer_SetError(JSON_Writer writer, Error error)
{
   writer->error = error;
}
