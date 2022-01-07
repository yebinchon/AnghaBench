; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_resetasync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_resetasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@__dvd_canceling = common dso_local global i64 0, align 8
@__dvd_cancelcallback = common dso_local global i32 0, align 4
@__dvd_executing = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dvd_resetasync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @_CPU_ISR_Disable(i32 %4)
  %6 = call i32 (...) @__dvd_clearwaitingqueue()
  %7 = load i64, i64* @__dvd_canceling, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* @__dvd_cancelcallback, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @DVD_CancelAllAsync(i32 %18)
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @_CPU_ISR_Restore(i32 %21)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__dvd_clearwaitingqueue(...) #1

declare dso_local i32 @DVD_CancelAllAsync(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
