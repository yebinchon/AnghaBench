; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_throttle.c_SpeedThrottle.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_throttle.c_SpeedThrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SpeedThrottle.ttime = internal global i32 0, align 4
@SpeedThrottle.ltime = internal global i32 0, align 4
@tfreq = common dso_local global i32 0, align 4
@desiredfps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpeedThrottle() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = call i32 (...) @GetCurTime()
  store i32 %2, i32* @SpeedThrottle.ttime, align 4
  %3 = load i32, i32* @SpeedThrottle.ttime, align 4
  %4 = load i32, i32* @SpeedThrottle.ltime, align 4
  %5 = sub nsw i32 %3, %4
  %6 = load i32, i32* @tfreq, align 4
  %7 = load i32, i32* @desiredfps, align 4
  %8 = sdiv i32 %6, %7
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %1

11:                                               ; preds = %1
  %12 = load i32, i32* @SpeedThrottle.ttime, align 4
  %13 = load i32, i32* @SpeedThrottle.ltime, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @tfreq, align 4
  %16 = mul nsw i32 %15, 4
  %17 = load i32, i32* @desiredfps, align 4
  %18 = sdiv i32 %16, %17
  %19 = icmp sge i32 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @SpeedThrottle.ttime, align 4
  store i32 %21, i32* @SpeedThrottle.ltime, align 4
  br label %28

22:                                               ; preds = %11
  %23 = load i32, i32* @tfreq, align 4
  %24 = load i32, i32* @desiredfps, align 4
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* @SpeedThrottle.ltime, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @SpeedThrottle.ltime, align 4
  br label %28

28:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @GetCurTime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
