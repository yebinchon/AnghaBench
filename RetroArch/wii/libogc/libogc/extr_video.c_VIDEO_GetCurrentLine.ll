; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetCurrentLine.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetCurrentLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@currTiming = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEO_GetCurrentLine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @_CPU_ISR_Disable(i32 %3)
  %5 = call i32 (...) @__getCurrentHalfLine()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @_CPU_ISR_Restore(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currTiming, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currTiming, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %0
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__getCurrentHalfLine(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
