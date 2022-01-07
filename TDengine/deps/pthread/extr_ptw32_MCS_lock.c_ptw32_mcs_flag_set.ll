; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_ptw32_MCS_lock.c_ptw32_mcs_flag_set.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_ptw32_MCS_lock.c_ptw32_mcs_flag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptw32_mcs_flag_set(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = ptrtoint i64* %4 to i32
  %6 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(i32 %5, i64 -1, i64 0)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 0, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @SetEvent(i64 %10)
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(i32, i64, i64) #1

declare dso_local i32 @SetEvent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
