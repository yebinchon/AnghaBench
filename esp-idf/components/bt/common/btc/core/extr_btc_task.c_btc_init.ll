; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/btc/core/extr_btc_task.c_btc_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/btc/core/extr_btc_task.c_btc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"BTC_TASK\00", align 1
@BTC_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@BTC_TASK_PRIO = common dso_local global i32 0, align 4
@BTC_TASK_PINNED_TO_CORE = common dso_local global i32 0, align 4
@btc_thread = common dso_local global i32* null, align 8
@BT_STATUS_NOMEM = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @BTC_TASK_STACK_SIZE, align 4
  %3 = load i32, i32* @BTC_TASK_PRIO, align 4
  %4 = load i32, i32* @BTC_TASK_PINNED_TO_CORE, align 4
  %5 = call i32* @osi_thread_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4, i32 2)
  store i32* %5, i32** @btc_thread, align 8
  %6 = load i32*, i32** @btc_thread, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @BT_STATUS_NOMEM, align 4
  store i32 %9, i32* %1, align 4
  br label %14

10:                                               ; preds = %0
  %11 = call i32 (...) @btc_gap_callback_init()
  %12 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %10, %8
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32* @osi_thread_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @btc_gap_callback_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
