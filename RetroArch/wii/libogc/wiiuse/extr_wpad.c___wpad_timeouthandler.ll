; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_timeouthandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_timeouthandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._wpad_cb = type { i64, %struct.wiimote_t* }
%struct.wiimote_t = type { i32 }

@__wpads_active = common dso_local global i32 0, align 4
@_thread_dispatch_disable_level = common dso_local global i32 0, align 4
@WPAD_MAX_WIIMOTES = common dso_local global i64 0, align 8
@__wpdcb = common dso_local global %struct._wpad_cb* null, align 8
@WIIMOTE_STATE_CONNECTED = common dso_local global i32 0, align 4
@__wpad_idletimeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @__wpad_timeouthandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wpad_timeouthandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wiimote_t*, align 8
  %7 = alloca %struct._wpad_cb*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.wiimote_t* null, %struct.wiimote_t** %6, align 8
  store %struct._wpad_cb* null, %struct._wpad_cb** %7, align 8
  %8 = load i32, i32* @__wpads_active, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %55

11:                                               ; preds = %2
  %12 = load i32, i32* @_thread_dispatch_disable_level, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @_thread_dispatch_disable_level, align 4
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %49, %11
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @WPAD_MAX_WIIMOTES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %19, i64 %20
  store %struct._wpad_cb* %21, %struct._wpad_cb** %7, align 8
  %22 = load %struct._wpad_cb*, %struct._wpad_cb** %7, align 8
  %23 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %22, i32 0, i32 1
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %23, align 8
  store %struct.wiimote_t* %24, %struct.wiimote_t** %6, align 8
  %25 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %26 = icmp ne %struct.wiimote_t* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %18
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %29 = load i32, i32* @WIIMOTE_STATE_CONNECTED, align 4
  %30 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct._wpad_cb*, %struct._wpad_cb** %7, align 8
  %34 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct._wpad_cb*, %struct._wpad_cb** %7, align 8
  %38 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @__wpad_idletimeout, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct._wpad_cb*, %struct._wpad_cb** %7, align 8
  %44 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %46 = call i32 @wiiuse_disconnect(%struct.wiimote_t* %45)
  br label %47

47:                                               ; preds = %42, %32
  br label %48

48:                                               ; preds = %47, %27, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i32, i32* @_thread_dispatch_disable_level, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* @_thread_dispatch_disable_level, align 4
  br label %55

55:                                               ; preds = %52, %10
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_disconnect(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
