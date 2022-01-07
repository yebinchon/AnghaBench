; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_ReadEvent.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_ReadEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.accel_t }
%struct.accel_t = type { i32 }
%struct._wpad_cb = type { i64, i64, i64, i32, i32*, i32* }

@__wpads_inited = common dso_local global i64 0, align 8
@WPAD_STATE_DISABLED = common dso_local global i64 0, align 8
@WPAD_ERR_NOT_READY = common dso_local global i64 0, align 8
@__wpads = common dso_local global %struct.TYPE_4__** null, align 8
@WIIMOTE_STATE_CONNECTED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@__wpdcb = common dso_local global %struct._wpad_cb* null, align 8
@EVENTQUEUE_LENGTH = common dso_local global i64 0, align 8
@WPAD_ERR_QUEUE_EMPTY = common dso_local global i64 0, align 8
@WIIUSE_SMOOTHING = common dso_local global i32 0, align 4
@WPAD_ERR_NO_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WPAD_ReadEvent(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.accel_t*, align 8
  %10 = alloca %struct._wpad_cb*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store %struct.accel_t* null, %struct.accel_t** %9, align 8
  store %struct._wpad_cb* null, %struct._wpad_cb** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @_CPU_ISR_Disable(i64 %13)
  %15 = load i64, i64* @__wpads_inited, align 8
  %16 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @_CPU_ISR_Restore(i64 %19)
  %21 = load i64, i64* @WPAD_ERR_NOT_READY, align 8
  store i64 %21, i64* %3, align 8
  br label %119

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__wpads, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %103

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__wpads, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* @WIIMOTE_STATE_CONNECTED, align 4
  %34 = call i64 @WIIMOTE_IS_SET(%struct.TYPE_4__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__wpads, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %42 = call i64 @WIIMOTE_IS_SET(%struct.TYPE_4__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %36
  %45 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %45, i64 %46
  store %struct._wpad_cb* %47, %struct._wpad_cb** %10, align 8
  %48 = load i64, i64* @EVENTQUEUE_LENGTH, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %50 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %12, align 8
  %52 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %53 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @_CPU_ISR_Restore(i64 %57)
  %59 = load i64, i64* @WPAD_ERR_QUEUE_EMPTY, align 8
  store i64 %59, i64* %3, align 8
  br label %119

60:                                               ; preds = %44
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32*, i32** %12, align 8
  %65 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %66 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %73 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %78 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = urem i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %82 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  %85 = load %struct._wpad_cb*, %struct._wpad_cb** %10, align 8
  %86 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %85, i32 0, i32 3
  store i32* %86, i32** %11, align 8
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__wpads, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.accel_t* %91, %struct.accel_t** %9, align 8
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__wpads, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %97 = call i64 @WIIMOTE_IS_FLAG_SET(%struct.TYPE_4__* %95, i32 %96)
  store i64 %97, i64* %8, align 8
  br label %102

98:                                               ; preds = %36
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @_CPU_ISR_Restore(i64 %99)
  %101 = load i64, i64* @WPAD_ERR_NOT_READY, align 8
  store i64 %101, i64* %3, align 8
  br label %119

102:                                              ; preds = %71
  br label %107

103:                                              ; preds = %28, %22
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @_CPU_ISR_Restore(i64 %104)
  %106 = load i64, i64* @WPAD_ERR_NO_CONTROLLER, align 8
  store i64 %106, i64* %3, align 8
  br label %119

107:                                              ; preds = %102
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @_CPU_ISR_Restore(i64 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.accel_t*, %struct.accel_t** %9, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @__wpad_calc_data(i32* %113, i32* %114, %struct.accel_t* %115, i64 %116)
  br label %118

118:                                              ; preds = %112, %107
  store i64 0, i64* %3, align 8
  br label %119

119:                                              ; preds = %118, %103, %98, %56, %18
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i64 @WIIMOTE_IS_SET(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @WIIMOTE_IS_FLAG_SET(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @__wpad_calc_data(i32*, i32*, %struct.accel_t*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
