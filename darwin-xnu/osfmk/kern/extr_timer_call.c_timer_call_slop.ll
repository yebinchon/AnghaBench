; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_slop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_slop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_CALL_URGENCY_MASK = common dso_local global i64 0, align 8
@mach_timer_coalescing_enabled = common dso_local global i64 0, align 8
@TIMER_CALL_SYS_CRITICAL = common dso_local global i64 0, align 8
@timer_user_idle_level = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timer_call_slop(i64 %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @TIMER_CALL_URGENCY_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* @mach_timer_coalescing_enabled, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* @TIMER_CALL_SYS_CRITICAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %15, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @timer_compute_leeway(i32 %30, i64 %31, i64* %12, i64* %13, i32* %32)
  %34 = load i64, i64* %12, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* %12, align 8
  %41 = ashr i64 %39, %40
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @MIN(i64 %41, i64 %42)
  store i64 %43, i64* %14, align 8
  br label %53

44:                                               ; preds = %29
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i64, i64* %12, align 8
  %49 = sub nsw i64 0, %48
  %50 = shl i64 %47, %49
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @MIN(i64 %50, i64 %51)
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @timer_user_idle_level, align 8
  %56 = mul nsw i64 %54, %55
  %57 = ashr i64 %56, 7
  %58 = load i64, i64* %14, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %6, align 8
  br label %62

61:                                               ; preds = %25, %21, %5
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @timer_compute_leeway(i32, i64, i64*, i64*, i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
