
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int thread_t ;
typedef int ast_t ;


 int AST_TELEMETRY_ALL ;
 int AST_TELEMETRY_IO ;
 int AST_TELEMETRY_KERNEL ;
 int AST_TELEMETRY_PMI ;
 int AST_TELEMETRY_USER ;
 int assert (int) ;
 int kIORecord ;
 int kInterruptRecord ;
 int kPMIRecord ;
 int kUserMode ;
 int telemetry_buffer ;
 int telemetry_take_sample (int ,int,int *) ;

void telemetry_ast(thread_t thread, ast_t reasons)
{
 assert((reasons & AST_TELEMETRY_ALL) != 0);

 uint8_t record_type = 0;
 if (reasons & AST_TELEMETRY_IO) {
  record_type |= kIORecord;
 }
 if (reasons & (AST_TELEMETRY_USER | AST_TELEMETRY_KERNEL)) {
  record_type |= (reasons & AST_TELEMETRY_PMI) ? kPMIRecord :
    kInterruptRecord;
 }

 uint8_t user_telemetry = (reasons & AST_TELEMETRY_USER) ? kUserMode : 0;

 uint8_t microsnapshot_flags = record_type | user_telemetry;

 telemetry_take_sample(thread, microsnapshot_flags, &telemetry_buffer);
}
