; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_linuxraw_joypad.c_linuxraw_poll_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_linuxraw_joypad.c_linuxraw_poll_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linuxraw_joypad = type { i32*, i32, i32 }
%struct.js_event = type { i32, i64, i32 }

@JS_EVENT_INIT = common dso_local global i32 0, align 4
@NUM_BUTTONS = common dso_local global i64 0, align 8
@NUM_AXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linuxraw_joypad*)* @linuxraw_poll_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linuxraw_poll_pad(%struct.linuxraw_joypad* %0) #0 {
  %2 = alloca %struct.linuxraw_joypad*, align 8
  %3 = alloca %struct.js_event, align 8
  %4 = alloca i32, align 4
  store %struct.linuxraw_joypad* %0, %struct.linuxraw_joypad** %2, align 8
  br label %5

5:                                                ; preds = %58, %1
  %6 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %2, align 8
  %7 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @read(i32 %8, %struct.js_event* %3, i32 24)
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %59

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @JS_EVENT_INIT, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %58 [
    i32 128, label %18
    i32 129, label %43
  ]

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NUM_BUTTONS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %2, align 8
  %29 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BIT32_SET(i32 %30, i64 %32)
  br label %41

34:                                               ; preds = %23
  %35 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %2, align 8
  %36 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @BIT32_CLEAR(i32 %37, i64 %39)
  br label %41

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41, %18
  br label %58

43:                                               ; preds = %11
  %44 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NUM_AXES, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %2, align 8
  %52 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %43
  br label %58

58:                                               ; preds = %11, %57, %42
  br label %5

59:                                               ; preds = %5
  ret void
}

declare dso_local i64 @read(i32, %struct.js_event*, i32) #1

declare dso_local i32 @BIT32_SET(i32, i64) #1

declare dso_local i32 @BIT32_CLEAR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
