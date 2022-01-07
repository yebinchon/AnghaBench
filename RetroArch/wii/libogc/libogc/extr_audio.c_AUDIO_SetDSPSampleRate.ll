; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c_AUDIO_SetDSPSampleRate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c_AUDIO_SetDSPSampleRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AI_DMAFR = common dso_local global i32 0, align 4
@_aiReg = common dso_local global i32* null, align 8
@AI_CONTROL = common dso_local global i64 0, align 8
@AI_SAMPLERATE_32KHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AUDIO_SetDSPSampleRate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @AUDIO_GetDSPSampleRate()
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load i32, i32* @AI_DMAFR, align 4
  %9 = xor i32 %8, -1
  %10 = load i32*, i32** @_aiReg, align 8
  %11 = load i64, i64* @AI_CONTROL, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %9
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @AI_SAMPLERATE_32KHZ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %7
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @_CPU_ISR_Disable(i32 %19)
  %21 = call i32 (...) @__AISRCINIT()
  %22 = load i32, i32* @AI_DMAFR, align 4
  %23 = load i32*, i32** @_aiReg, align 8
  %24 = load i64, i64* @AI_CONTROL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @_CPU_ISR_Restore(i32 %28)
  br label %30

30:                                               ; preds = %18, %7
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64 @AUDIO_GetDSPSampleRate(...) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__AISRCINIT(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
