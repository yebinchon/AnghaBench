; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_thread_wait_to_block.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_thread_wait_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@THREAD_EXTENDED_INFO_COUNT = common dso_local global i32 0, align 4
@THREAD_EXTENDED_INFO = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"thread_info\00", align 1
@TH_STATE_WAITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Target thread blocked\0A\00", align 1
@SWITCH_OPTION_DEPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thread_wait_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_wait_to_block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %6

6:                                                ; preds = %1, %21
  %7 = load i32, i32* @THREAD_EXTENDED_INFO_COUNT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @THREAD_EXTENDED_INFO, align 4
  %10 = ptrtoint %struct.TYPE_2__* %3 to i32
  %11 = call i32 @thread_info(i32 %8, i32 %9, i32 %10, i32* %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @T_QUIET, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TH_STATE_WAITING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = call i32 @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SWITCH_OPTION_DEPRESS, align 4
  %24 = call i32 @thread_switch(i32 %22, i32 %23, i32 0)
  br label %6

25:                                               ; preds = %19
  ret void
}

declare dso_local i32 @thread_info(i32, i32, i32, i32*) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @thread_switch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
