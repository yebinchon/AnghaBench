; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoFrame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@frame = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoFrame() #0 {
  %1 = load i32, i32* @frame, align 4
  %2 = call i32 @pprof_start(i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %5 = load i32, i32* @PicoAHW, align 4
  %6 = load i32, i32* @PAHW_SMS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @PicoFrameMS()
  br label %28

11:                                               ; preds = %0
  %12 = load i32, i32* @PicoAHW, align 4
  %13 = load i32, i32* @PAHW_32X, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @PicoFrame32x()
  br label %28

18:                                               ; preds = %11
  %19 = load i32, i32* @PicoAHW, align 4
  %20 = load i32, i32* @PAHW_MCD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @PicoFrameMCD()
  br label %28

25:                                               ; preds = %18
  %26 = call i32 (...) @PicoFrameStart()
  %27 = call i32 (...) @PicoFrameHints()
  br label %28

28:                                               ; preds = %25, %23, %16, %9
  %29 = load i32, i32* @frame, align 4
  %30 = call i32 @pprof_end(i32 %29)
  ret void
}

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @PicoFrameMS(...) #1

declare dso_local i32 @PicoFrame32x(...) #1

declare dso_local i32 @PicoFrameMCD(...) #1

declare dso_local i32 @PicoFrameStart(...) #1

declare dso_local i32 @PicoFrameHints(...) #1

declare dso_local i32 @pprof_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
