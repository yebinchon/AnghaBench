; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_SetMotionPlus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_SetMotionPlus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPAD_CHAN_ALL = common dso_local global i32 0, align 4
@WPAD_CHAN_0 = common dso_local global i32 0, align 4
@WPAD_MAX_WIIMOTES = common dso_local global i32 0, align 4
@WPAD_ERR_NONE = common dso_local global i32 0, align 4
@WPAD_ERR_BAD_CHANNEL = common dso_local global i32 0, align 4
@__wpads_inited = common dso_local global i64 0, align 8
@WPAD_STATE_DISABLED = common dso_local global i64 0, align 8
@WPAD_ERR_NOT_READY = common dso_local global i32 0, align 4
@__wpads = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WPAD_SetMotionPlus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @WPAD_CHAN_ALL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* @WPAD_CHAN_0, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %27, %12
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @WPAD_SetMotionPlus(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @WPAD_ERR_NONE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load i32, i32* @WPAD_ERR_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @WPAD_CHAN_0, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @WPAD_ERR_BAD_CHANNEL, align 4
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @_CPU_ISR_Disable(i32 %43)
  %45 = load i64, i64* @__wpads_inited, align 8
  %46 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @_CPU_ISR_Restore(i32 %49)
  %51 = load i32, i32* @WPAD_ERR_NOT_READY, align 4
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %42
  %53 = load i32**, i32*** @__wpads, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32**, i32*** @__wpads, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @wiiuse_set_motion_plus(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @_CPU_ISR_Restore(i32 %68)
  %70 = load i32, i32* @WPAD_ERR_NONE, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %48, %40, %30, %24
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @wiiuse_set_motion_plus(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
