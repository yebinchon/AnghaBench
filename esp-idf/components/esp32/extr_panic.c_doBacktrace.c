
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ next_pc; int sp; int pc; } ;
typedef TYPE_1__ esp_backtrace_frame_t ;
struct TYPE_6__ {scalar_t__ a0; int a1; int pc; } ;
typedef TYPE_2__ XtExcFrame ;


 int INT32_MAX ;
 int esp_backtrace_get_next_frame (TYPE_1__*) ;
 scalar_t__ esp_cpu_process_stack_pc (int ) ;
 scalar_t__ esp_ptr_executable (void*) ;
 scalar_t__ esp_stack_ptr_is_sane (int ) ;
 int panicPutStr (char*) ;
 int putEntry (scalar_t__,int ) ;

__attribute__((used)) static void doBacktrace(XtExcFrame *exc_frame, int depth)
{

    esp_backtrace_frame_t stk_frame = {.pc = exc_frame->pc, .sp = exc_frame->a1, .next_pc = exc_frame->a0};
    panicPutStr("\r\nBacktrace:");
    putEntry(esp_cpu_process_stack_pc(stk_frame.pc), stk_frame.sp);


    bool corrupted = (esp_stack_ptr_is_sane(stk_frame.sp) &&
                      esp_ptr_executable((void*)esp_cpu_process_stack_pc(stk_frame.pc))) ?
                      0 : 1;
    uint32_t i = ((depth <= 0) ? INT32_MAX : depth) - 1;
    while (i-- > 0 && stk_frame.next_pc != 0 && !corrupted) {
        if (!esp_backtrace_get_next_frame(&stk_frame)) {
            corrupted = 1;
        }
        putEntry(esp_cpu_process_stack_pc(stk_frame.pc), stk_frame.sp);
    }


    if (corrupted) {
        panicPutStr(" |<-CORRUPTED");
    } else if (stk_frame.next_pc != 0) {
        panicPutStr(" |<-CONTINUES");
    }
    panicPutStr("\r\n");
}
