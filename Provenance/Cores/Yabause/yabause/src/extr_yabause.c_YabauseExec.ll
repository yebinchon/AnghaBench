; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FrameAdvanceVariable = common dso_local global i64 0, align 8
@LagFrameFlag = common dso_local global i32 0, align 4
@NeedAdvance = common dso_local global i64 0, align 8
@Paused = common dso_local global i64 0, align 8
@SCSP_MUTE_SYSTEM = common dso_local global i32 0, align 4
@RunNormal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabauseExec() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @FrameAdvanceVariable, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @LagFrameFlag, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i64, i64* @NeedAdvance, align 8
  store i64 %8, i64* @FrameAdvanceVariable, align 8
  %9 = call i32 (...) @YabauseEmulate()
  %10 = load i64, i64* @Paused, align 8
  store i64 %10, i64* @FrameAdvanceVariable, align 8
  store i32 0, i32* %1, align 4
  br label %36

11:                                               ; preds = %4, %0
  %12 = load i64, i64* @FrameAdvanceVariable, align 8
  %13 = load i64, i64* @Paused, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %17 = call i32 @ScspMuteAudio(i32 %16)
  store i32 0, i32* %1, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load i64, i64* @FrameAdvanceVariable, align 8
  %20 = load i64, i64* @NeedAdvance, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* @Paused, align 8
  store i64 %23, i64* @FrameAdvanceVariable, align 8
  %24 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %25 = call i32 @ScspUnMuteAudio(i32 %24)
  %26 = call i32 (...) @YabauseEmulate()
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* @FrameAdvanceVariable, align 8
  %29 = load i64, i64* @RunNormal, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %33 = call i32 @ScspUnMuteAudio(i32 %32)
  %34 = call i32 (...) @YabauseEmulate()
  br label %35

35:                                               ; preds = %31, %27
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %15, %7
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @YabauseEmulate(...) #1

declare dso_local i32 @ScspMuteAudio(i32) #1

declare dso_local i32 @ScspUnMuteAudio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
