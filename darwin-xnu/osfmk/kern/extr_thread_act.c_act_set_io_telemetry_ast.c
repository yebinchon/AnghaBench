
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int AST_TELEMETRY_IO ;
 int act_set_ast (int ,int ) ;

void
act_set_io_telemetry_ast(thread_t thread)
{
 act_set_ast(thread, AST_TELEMETRY_IO);
}
