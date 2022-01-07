; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_main.c_smp_set_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_main.c_smp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SMP_STATE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"State change: %s(%d) ==> %s(%d)\00", align 1
@smp_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"smp_set_state invalid state =%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_set_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @SMP_STATE_MAX, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smp_cb, i32 0, i32 0), align 8
  %8 = call i32 @smp_get_state_name(i64 %7)
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smp_cb, i32 0, i32 0), align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @smp_get_state_name(i64 %11)
  %13 = load i64, i64* %2, align 8
  %14 = call i32 (i8*, i64, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10, i32 %12, i64 %13)
  %15 = load i64, i64* %2, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smp_cb, i32 0, i32 0), align 8
  br label %19

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = call i32 (i8*, i64, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @smp_get_state_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
