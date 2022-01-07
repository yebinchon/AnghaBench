; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_grab_mouse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_grab_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { i32 }

@DISCL_EXCLUSIVE = common dso_local global i32 0, align 4
@DISCL_FOREGROUND = common dso_local global i32 0, align 4
@DISCL_NONEXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dinput_grab_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_grab_mouse(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dinput_input*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dinput_input*
  store %struct.dinput_input* %7, %struct.dinput_input** %5, align 8
  %8 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %9 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IDirectInputDevice8_Unacquire(i32 %10)
  %12 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %13 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 (...) @video_driver_window_get()
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @DISCL_EXCLUSIVE, align 4
  %21 = load i32, i32* @DISCL_FOREGROUND, align 4
  %22 = or i32 %20, %21
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @DISCL_NONEXCLUSIVE, align 4
  %25 = load i32, i32* @DISCL_FOREGROUND, align 4
  %26 = or i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %22, %19 ], [ %26, %23 ]
  %29 = call i32 @IDirectInputDevice8_SetCooperativeLevel(i32 %14, i32 %16, i32 %28)
  %30 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %31 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IDirectInputDevice8_Acquire(i32 %32)
  ret void
}

declare dso_local i32 @IDirectInputDevice8_Unacquire(i32) #1

declare dso_local i32 @IDirectInputDevice8_SetCooperativeLevel(i32, i32, i32) #1

declare dso_local i64 @video_driver_window_get(...) #1

declare dso_local i32 @IDirectInputDevice8_Acquire(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
