; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_popwaitingqueue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_popwaitingqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_waitingqueue = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @__dvd_popwaitingqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__dvd_popwaitingqueue() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @_CPU_ISR_Disable(i32 %5)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32*, i32** @__dvd_waitingqueue, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @__lwp_queue_isempty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @_CPU_ISR_Restore(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32* @__dvd_popwaitingqueueprio(i32 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** %1, align 8
  br label %30

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @_CPU_ISR_Restore(i32 %28)
  store i32* null, i32** %1, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32*, i32** %1, align 8
  ret i32* %31
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_queue_isempty(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32* @__dvd_popwaitingqueueprio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
