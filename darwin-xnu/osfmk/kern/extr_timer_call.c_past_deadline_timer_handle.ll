; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_past_deadline_timer_handle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_past_deadline_timer_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@past_deadline_timers = common dso_local global i32 0, align 4
@past_deadline_deltas = common dso_local global i32 0, align 4
@past_deadline_longest = common dso_local global i64 0, align 8
@past_deadline_shortest = common dso_local global i64 0, align 8
@past_deadline_timer_adjustment = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @past_deadline_timer_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @past_deadline_timer_handle(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @past_deadline_timers, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @past_deadline_timers, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @past_deadline_deltas, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @past_deadline_deltas, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @past_deadline_longest, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  store i64 %20, i64* @past_deadline_longest, align 8
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @past_deadline_shortest, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* @past_deadline_shortest, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @past_deadline_timer_adjustment, align 8
  %30 = add nsw i64 %28, %29
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
