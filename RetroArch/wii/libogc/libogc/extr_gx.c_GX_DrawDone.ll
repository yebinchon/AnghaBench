; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_DrawDone.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_DrawDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_gxfinished = common dso_local global i64 0, align 8
@_gxwaitfinish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_DrawDone() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @_CPU_ISR_Disable(i32 %2)
  %4 = call i32 @GX_LOAD_BP_REG(i32 1157627906)
  %5 = call i32 (...) @GX_Flush()
  store i64 0, i64* @_gxfinished, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @_CPU_ISR_Flash(i32 %6)
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i64, i64* @_gxfinished, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @_gxwaitfinish, align 4
  %14 = call i32 @LWP_ThreadSleep(i32 %13)
  br label %8

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @_CPU_ISR_Restore(i32 %16)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @_CPU_ISR_Flash(i32) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
