; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._wpad_cb = type { %struct.wiimote_t* }
%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._wpad_cb*)* @__wpad_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wpad_disconnect(%struct._wpad_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._wpad_cb*, align 8
  %4 = alloca %struct.wiimote_t*, align 8
  store %struct._wpad_cb* %0, %struct._wpad_cb** %3, align 8
  %5 = load %struct._wpad_cb*, %struct._wpad_cb** %3, align 8
  %6 = icmp eq %struct._wpad_cb* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load %struct._wpad_cb*, %struct._wpad_cb** %3, align 8
  %10 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %9, i32 0, i32 0
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %10, align 8
  store %struct.wiimote_t* %11, %struct.wiimote_t** %4, align 8
  %12 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %13 = icmp ne %struct.wiimote_t* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %16 = load i32, i32* @WIIMOTE_STATE_CONNECTED, align 4
  %17 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %21 = call i32 @wiiuse_disconnect(%struct.wiimote_t* %20)
  br label %22

22:                                               ; preds = %19, %14, %8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_disconnect(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
