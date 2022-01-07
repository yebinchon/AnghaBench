; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Shutdown.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._wpad_cb = type { i32 }

@WPAD_STATE_DISABLED = common dso_local global i32 0, align 4
@__wpads_inited = common dso_local global i32 0, align 4
@__wpad_timer = common dso_local global i32 0, align 4
@WPAD_MAX_WIIMOTES = common dso_local global i64 0, align 8
@__wpdcb = common dso_local global %struct._wpad_cb* null, align 8
@__wpads_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WPAD_Shutdown() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._wpad_cb*, align 8
  store i32 0, i32* %3, align 4
  store %struct._wpad_cb* null, %struct._wpad_cb** %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @_CPU_ISR_Disable(i32 %5)
  %7 = load i32, i32* @WPAD_STATE_DISABLED, align 4
  store i32 %7, i32* @__wpads_inited, align 4
  %8 = load i32, i32* @__wpad_timer, align 4
  %9 = call i32 @SYS_RemoveAlarm(i32 %8)
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @WPAD_MAX_WIIMOTES, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %15, i64 %16
  store %struct._wpad_cb* %17, %struct._wpad_cb** %4, align 8
  %18 = load %struct._wpad_cb*, %struct._wpad_cb** %4, align 8
  %19 = call i32 @__wpad_disconnect(%struct._wpad_cb* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %10

23:                                               ; preds = %10
  %24 = call i32 @__wiiuse_sensorbar_enable(i32 0)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @_CPU_ISR_Restore(i32 %25)
  br label %27

27:                                               ; preds = %36, %23
  %28 = load i64, i64* @__wpads_active, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = call i32 @usleep(i32 50)
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = icmp sgt i32 %33, 3000
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  br label %27

37:                                               ; preds = %35, %27
  %38 = call i32 (...) @BTE_Shutdown()
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @SYS_RemoveAlarm(i32) #1

declare dso_local i32 @__wpad_disconnect(%struct._wpad_cb*) #1

declare dso_local i32 @__wiiuse_sensorbar_enable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @BTE_Shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
