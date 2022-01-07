; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_Free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ARBlockLen = common dso_local global i64* null, align 8
@__ARStackPointer = common dso_local global i64 0, align 8
@__ARFreeBlocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AR_Free(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @_CPU_ISR_Disable(i64 %4)
  %6 = load i64*, i64** @__ARBlockLen, align 8
  %7 = getelementptr inbounds i64, i64* %6, i32 -1
  store i64* %7, i64** @__ARBlockLen, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64*, i64** @__ARBlockLen, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %2, align 8
  store i64 %12, i64* %13, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64*, i64** @__ARBlockLen, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @__ARStackPointer, align 8
  %18 = sub nsw i64 %17, %16
  store i64 %18, i64* @__ARStackPointer, align 8
  %19 = load i32, i32* @__ARFreeBlocks, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @__ARFreeBlocks, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @_CPU_ISR_Restore(i64 %21)
  %23 = load i64, i64* @__ARStackPointer, align 8
  ret i64 %23
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
