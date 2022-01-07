; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_TickRealtimeManual.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_TickRealtimeManual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_manual_lock = common dso_local global i32 0, align 4
@last_manual_tick = common dso_local global i64 0, align 8
@manual_tick_add_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TickRealtimeManual() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @tick_manual_lock, align 4
  %3 = call i32 @Lock(i32 %2)
  %4 = call i64 (...) @TickGetRealtimeTickValue64()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @last_manual_tick, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i64, i64* @last_manual_tick, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* @last_manual_tick, align 8
  %13 = load i64, i64* %1, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* @manual_tick_add_value, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* @manual_tick_add_value, align 8
  br label %17

17:                                               ; preds = %11, %7, %0
  %18 = load i64, i64* %1, align 8
  store i64 %18, i64* @last_manual_tick, align 8
  %19 = load i32, i32* @tick_manual_lock, align 4
  %20 = call i32 @Unlock(i32 %19)
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @manual_tick_add_value, align 8
  %23 = add nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  ret i32 %24
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @TickGetRealtimeTickValue64(...) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
