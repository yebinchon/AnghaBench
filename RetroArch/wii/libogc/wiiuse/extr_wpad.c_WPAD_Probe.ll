; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Probe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@__wpads_inited = common dso_local global i64 0, align 8
@WPAD_STATE_DISABLED = common dso_local global i64 0, align 8
@WPAD_ERR_NOT_READY = common dso_local global i64 0, align 8
@__wpads = common dso_local global %struct.TYPE_6__** null, align 8
@WIIMOTE_STATE_CONNECTED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@WPAD_EXP_NONE = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WPAD_ERR_NONE = common dso_local global i64 0, align 8
@WPAD_ERR_NO_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WPAD_Probe(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = load i64, i64* @__wpads_inited, align 8
  %13 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @_CPU_ISR_Restore(i32 %16)
  %18 = load i64, i64* @WPAD_ERR_NOT_READY, align 8
  store i64 %18, i64* %3, align 8
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @__wpads, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = load i32, i32* @WIIMOTE_STATE_CONNECTED, align 4
  %29 = call i64 @WIIMOTE_IS_SET(%struct.TYPE_6__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %34 = call i64 @WIIMOTE_IS_SET(%struct.TYPE_6__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load i32, i32* @WPAD_EXP_NONE, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %40 = call i64 @WIIMOTE_IS_SET(%struct.TYPE_6__* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 128, label %47
    i32 129, label %47
  ]

47:                                               ; preds = %42, %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %42, %47
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i64, i64* @WPAD_ERR_NONE, align 8
  store i64 %60, i64* %6, align 8
  br label %63

61:                                               ; preds = %31
  %62 = load i64, i64* @WPAD_ERR_NOT_READY, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %59
  br label %66

64:                                               ; preds = %26, %19
  %65 = load i64, i64* @WPAD_ERR_NO_CONTROLLER, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @_CPU_ISR_Restore(i32 %67)
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %66, %15
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @WIIMOTE_IS_SET(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
