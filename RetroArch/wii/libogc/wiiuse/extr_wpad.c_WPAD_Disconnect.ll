; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c_WPAD_Disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._wpad_cb = type { i32 }

@WPAD_CHAN_0 = common dso_local global i64 0, align 8
@WPAD_MAX_WIIMOTES = common dso_local global i64 0, align 8
@WPAD_ERR_BAD_CHANNEL = common dso_local global i64 0, align 8
@__wpads_inited = common dso_local global i64 0, align 8
@WPAD_STATE_DISABLED = common dso_local global i64 0, align 8
@WPAD_ERR_NOT_READY = common dso_local global i64 0, align 8
@__wpdcb = common dso_local global %struct._wpad_cb* null, align 8
@__wpads_active = common dso_local global i32 0, align 4
@WPAD_ERR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WPAD_Disconnect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._wpad_cb*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store %struct._wpad_cb* null, %struct._wpad_cb** %6, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @WPAD_CHAN_0, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @WPAD_MAX_WIIMOTES, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @WPAD_ERR_BAD_CHANNEL, align 8
  store i64 %15, i64* %2, align 8
  br label %50

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @_CPU_ISR_Disable(i32 %17)
  %19 = load i64, i64* @__wpads_inited, align 8
  %20 = load i64, i64* @WPAD_STATE_DISABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_CPU_ISR_Restore(i32 %23)
  %25 = load i64, i64* @WPAD_ERR_NOT_READY, align 8
  store i64 %25, i64* %2, align 8
  br label %50

26:                                               ; preds = %16
  %27 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %27, i64 %28
  store %struct._wpad_cb* %29, %struct._wpad_cb** %6, align 8
  %30 = load %struct._wpad_cb*, %struct._wpad_cb** %6, align 8
  %31 = call i32 @__wpad_disconnect(%struct._wpad_cb* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @_CPU_ISR_Restore(i32 %32)
  br label %34

34:                                               ; preds = %47, %26
  %35 = load i32, i32* @__wpads_active, align 4
  %36 = load i64, i64* %3, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = call i32 @usleep(i32 50)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = icmp sgt i32 %44, 3000
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41
  br label %34

48:                                               ; preds = %46, %34
  %49 = load i64, i64* @WPAD_ERR_NONE, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %22, %14
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__wpad_disconnect(%struct._wpad_cb*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
