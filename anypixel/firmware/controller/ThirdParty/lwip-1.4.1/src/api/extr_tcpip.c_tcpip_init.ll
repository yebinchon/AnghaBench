; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcpip_init_done = common dso_local global i32 0, align 4
@tcpip_init_done_arg = common dso_local global i8* null, align 8
@mbox = common dso_local global i32 0, align 4
@TCPIP_MBOX_SIZE = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to create tcpip_thread mbox\00", align 1
@TCPIP_THREAD_NAME = common dso_local global i32 0, align 4
@tcpip_thread = common dso_local global i32 0, align 4
@TCPIP_THREAD_STACKSIZE = common dso_local global i32 0, align 4
@TCPIP_THREAD_PRIO = common dso_local global i32 0, align 4
@lock_tcpip_core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpip_init(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @lwip_init()
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* @tcpip_init_done, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** @tcpip_init_done_arg, align 8
  %8 = load i32, i32* @TCPIP_MBOX_SIZE, align 4
  %9 = call i64 @sys_mbox_new(i32* @mbox, i32 %8)
  %10 = load i64, i64* @ERR_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @TCPIP_THREAD_NAME, align 4
  %16 = load i32, i32* @tcpip_thread, align 4
  %17 = load i32, i32* @TCPIP_THREAD_STACKSIZE, align 4
  %18 = load i32, i32* @TCPIP_THREAD_PRIO, align 4
  %19 = call i32 @sys_thread_new(i32 %15, i32 %16, i32* null, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @lwip_init(...) #1

declare dso_local i64 @sys_mbox_new(i32*, i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @sys_thread_new(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
