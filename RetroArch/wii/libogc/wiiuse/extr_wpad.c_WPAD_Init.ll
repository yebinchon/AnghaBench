; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i64 }

@__wpads_inited = common dso_local global i64 0, align 8
@WPAD_STATE_DISABLED = common dso_local global i64 0, align 8
@__wpads_ponded = common dso_local global i64 0, align 8
@__wpads_active = common dso_local global i64 0, align 8
@__wpdcb = common dso_local global %struct.TYPE_8__* null, align 8
@WPAD_MAX_WIIMOTES = common dso_local global i32 0, align 4
@__wpad_devs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@__wpad_keys = common dso_local global %struct.TYPE_8__* null, align 8
@WPAD_THRESH_DEFAULT_BUTTONS = common dso_local global i32 0, align 4
@WPAD_THRESH_DEFAULT_IR = common dso_local global i32 0, align 4
@WPAD_THRESH_DEFAULT_ACCEL = common dso_local global i32 0, align 4
@WPAD_THRESH_DEFAULT_JOYSTICK = common dso_local global i32 0, align 4
@WPAD_THRESH_DEFAULT_MOTION_PLUS = common dso_local global i32 0, align 4
@WPAD_ERR_BADCONF = common dso_local global i32 0, align 4
@WPAD_ERR_NONEREGISTERED = common dso_local global i32 0, align 4
@CONF_PAD_MAX_REGISTERED = common dso_local global i64 0, align 8
@__wpad_eventCB = common dso_local global i32 0, align 4
@__wpads = common dso_local global i32* null, align 8
@WPAD_ERR_UNKNOWN = common dso_local global i32 0, align 4
@__wpad_disconnectCB = common dso_local global i32 0, align 4
@__initcore_finished = common dso_local global i32 0, align 4
@__wpad_timer = common dso_local global i32 0, align 4
@__wpad_resetinfo = common dso_local global i32 0, align 4
@__wpad_timeouthandler = common dso_local global i32 0, align 4
@WPAD_STATE_ENABLING = common dso_local global i64 0, align 8
@WPAD_ERR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WPAD_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @_CPU_ISR_Disable(i32 %5)
  %7 = load i64, i64* @__wpads_inited, align 8
  %8 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %125

10:                                               ; preds = %0
  store i64 0, i64* @__wpads_ponded, align 8
  store i64 0, i64* @__wpads_active, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %12 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(%struct.TYPE_8__* %11, i32 0, i32 %15)
  %17 = call i32 @memset(%struct.TYPE_8__* @__wpad_devs, i32 0, i32 4)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpad_keys, align 8
  %19 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(%struct.TYPE_8__* %18, i32 0, i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %64, %10
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i32, i32* @WPAD_THRESH_DEFAULT_BUTTONS, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i32 %29, i32* %35, align 4
  %36 = load i32, i32* @WPAD_THRESH_DEFAULT_IR, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* @WPAD_THRESH_DEFAULT_ACCEL, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @WPAD_THRESH_DEFAULT_JOYSTICK, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* @WPAD_THRESH_DEFAULT_MOTION_PLUS, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__wpdcb, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  br label %64

64:                                               ; preds = %28
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %24

67:                                               ; preds = %24
  %68 = call i64 @CONF_GetPadDevices(%struct.TYPE_8__* @__wpad_devs)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = call i32 (...) @WPAD_Shutdown()
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @_CPU_ISR_Restore(i32 %72)
  %74 = load i32, i32* @WPAD_ERR_BADCONF, align 4
  store i32 %74, i32* %1, align 4
  br label %129

75:                                               ; preds = %67
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__wpad_devs, i32 0, i32 0), align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = call i32 (...) @WPAD_Shutdown()
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @_CPU_ISR_Restore(i32 %80)
  %82 = load i32, i32* @WPAD_ERR_NONEREGISTERED, align 4
  store i32 %82, i32* %1, align 4
  br label %129

83:                                               ; preds = %75
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__wpad_devs, i32 0, i32 0), align 8
  %85 = load i64, i64* @CONF_PAD_MAX_REGISTERED, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = call i32 (...) @WPAD_Shutdown()
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @_CPU_ISR_Restore(i32 %89)
  %91 = load i32, i32* @WPAD_ERR_BADCONF, align 4
  store i32 %91, i32* %1, align 4
  br label %129

92:                                               ; preds = %83
  %93 = load i32, i32* @WPAD_MAX_WIIMOTES, align 4
  %94 = load i32, i32* @__wpad_eventCB, align 4
  %95 = call i32* @wiiuse_init(i32 %93, i32 %94)
  store i32* %95, i32** @__wpads, align 8
  %96 = load i32*, i32** @__wpads, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = call i32 (...) @WPAD_Shutdown()
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @_CPU_ISR_Restore(i32 %100)
  %102 = load i32, i32* @WPAD_ERR_UNKNOWN, align 4
  store i32 %102, i32* %1, align 4
  br label %129

103:                                              ; preds = %92
  %104 = call i32 @__wiiuse_sensorbar_enable(i32 1)
  %105 = call i32 (...) @BTE_Init()
  %106 = load i32, i32* @__wpad_disconnectCB, align 4
  %107 = call i32 @BTE_SetDisconnectCallback(i32 %106)
  %108 = load i32, i32* @__initcore_finished, align 4
  %109 = call i32 @BTE_InitCore(i32 %108)
  %110 = call i64 @SYS_CreateAlarm(i32* @__wpad_timer)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = call i32 (...) @WPAD_Shutdown()
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @_CPU_ISR_Restore(i32 %114)
  %116 = load i32, i32* @WPAD_ERR_UNKNOWN, align 4
  store i32 %116, i32* %1, align 4
  br label %129

117:                                              ; preds = %103
  %118 = call i32 @SYS_RegisterResetFunc(i32* @__wpad_resetinfo)
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* @__wpad_timer, align 4
  %122 = load i32, i32* @__wpad_timeouthandler, align 4
  %123 = call i32 @SYS_SetPeriodicAlarm(i32 %121, %struct.timespec* %3, %struct.timespec* %3, i32 %122, i32* null)
  %124 = load i64, i64* @WPAD_STATE_ENABLING, align 8
  store i64 %124, i64* @__wpads_inited, align 8
  br label %125

125:                                              ; preds = %117, %0
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @_CPU_ISR_Restore(i32 %126)
  %128 = load i32, i32* @WPAD_ERR_NONE, align 4
  store i32 %128, i32* %1, align 4
  br label %129

129:                                              ; preds = %125, %112, %98, %87, %78, %70
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @CONF_GetPadDevices(%struct.TYPE_8__*) #1

declare dso_local i32 @WPAD_Shutdown(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32* @wiiuse_init(i32, i32) #1

declare dso_local i32 @__wiiuse_sensorbar_enable(i32) #1

declare dso_local i32 @BTE_Init(...) #1

declare dso_local i32 @BTE_SetDisconnectCallback(i32) #1

declare dso_local i32 @BTE_InitCore(i32) #1

declare dso_local i64 @SYS_CreateAlarm(i32*) #1

declare dso_local i32 @SYS_RegisterResetFunc(i32*) #1

declare dso_local i32 @SYS_SetPeriodicAlarm(i32, %struct.timespec*, %struct.timespec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
