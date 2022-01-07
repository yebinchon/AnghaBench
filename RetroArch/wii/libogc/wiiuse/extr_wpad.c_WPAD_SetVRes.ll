; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_SetVRes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_SetVRes.c"
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
define dso_local i32 @WPAD_SetVRes(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WPAD_CHAN_ALL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load i32, i32* @WPAD_CHAN_0, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %30, %14
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @WPAD_SetVRes(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @WPAD_ERR_NONE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %75

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* @WPAD_ERR_NONE, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @WPAD_CHAN_0, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @WPAD_ERR_BAD_CHANNEL, align 4
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @_CPU_ISR_Disable(i32 %46)
  %48 = load i64, i64* @__wpads_inited, align 8
  %49 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @_CPU_ISR_Restore(i32 %52)
  %54 = load i32, i32* @WPAD_ERR_NOT_READY, align 4
  store i32 %54, i32* %4, align 4
  br label %75

55:                                               ; preds = %45
  %56 = load i32**, i32*** @__wpads, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32**, i32*** @__wpads, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @wiiuse_set_ir_vres(i32* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %55
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @_CPU_ISR_Restore(i32 %72)
  %74 = load i32, i32* @WPAD_ERR_NONE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %51, %43, %33, %27
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @wiiuse_set_ir_vres(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
