; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_WG_RestoreGamma.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_WG_RestoreGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@glw_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@s_oldHardwareGamma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WG_RestoreGamma() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  br i1 true, label %5, label %9

5:                                                ; preds = %4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glw_state, i32 0, i32 0), align 4
  %7 = load i32, i32* @s_oldHardwareGamma, align 4
  %8 = call i32 @qwglSetDeviceGammaRamp3DFX(i32 %6, i32 %7)
  br label %18

9:                                                ; preds = %4
  %10 = call i32 (...) @GetDesktopWindow()
  %11 = call i32 @GetDC(i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @s_oldHardwareGamma, align 4
  %14 = call i32 @SetDeviceGammaRamp(i32 %12, i32 %13)
  %15 = call i32 (...) @GetDesktopWindow()
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @ReleaseDC(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %9, %5
  br label %19

19:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @qwglSetDeviceGammaRamp3DFX(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @SetDeviceGammaRamp(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
