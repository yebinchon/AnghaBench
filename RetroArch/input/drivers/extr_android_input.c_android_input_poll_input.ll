; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32 }

@g_android = common dso_local global i64 0, align 8
@ANDROID_KEYBOARD_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @android_input_poll_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_input_poll_input(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.android_app*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %12 = load i64, i64* @g_android, align 8
  %13 = inttoptr i64 %12 to %struct.android_app*
  store %struct.android_app* %13, %struct.android_app** %4, align 8
  br label %14

14:                                               ; preds = %112, %1
  %15 = load %struct.android_app*, %struct.android_app** %4, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @AInputQueue_hasEvents(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %111, %20
  %22 = load %struct.android_app*, %struct.android_app** %4, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @AInputQueue_getEvent(i32 %24, i32** %3)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  %28 = load %struct.android_app*, %struct.android_app** %4, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @AInputQueue_preDispatchEvent(i32 %30, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @AInputEvent_getSource(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @AInputEvent_getType(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @android_input_get_id(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @android_input_get_id_port(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %27
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @is_keyboard_id(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %2, align 8
  %51 = load %struct.android_app*, %struct.android_app** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @handle_hotplug(i32* %50, %struct.android_app* %51, i32* %10, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %45, %27
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %101 [
    i32 128, label %57
    i32 129, label %71
  ]

57:                                               ; preds = %55
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @android_input_poll_event_type_motion(i32* %58, i32* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32*, i32** %2, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @engine_handle_dpad(i32* %65, i32* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %57
  br label %101

71:                                               ; preds = %55
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @AKeyEvent_getKeyCode(i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @is_keyboard_id(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @android_input_poll_event_type_keyboard(i32* %81, i32 %82, i32* %5)
  %84 = load %struct.android_app*, %struct.android_app** %4, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @ANDROID_KEYBOARD_PORT, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @android_input_poll_event_type_key(%struct.android_app* %84, i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32* %5)
  br label %91

91:                                               ; preds = %80, %77
  br label %100

92:                                               ; preds = %71
  %93 = load %struct.android_app*, %struct.android_app** %4, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @android_input_poll_event_type_key(%struct.android_app* %93, i32* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32* %5)
  br label %100

100:                                              ; preds = %92, %91
  br label %101

101:                                              ; preds = %55, %100, %70
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load %struct.android_app*, %struct.android_app** %4, align 8
  %106 = getelementptr inbounds %struct.android_app, %struct.android_app* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @AInputQueue_finishEvent(i32 %107, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %101
  br label %21

112:                                              ; preds = %21
  br label %14

113:                                              ; preds = %14
  ret void
}

declare dso_local i64 @AInputQueue_hasEvents(i32) #1

declare dso_local i64 @AInputQueue_getEvent(i32, i32**) #1

declare dso_local i32 @AInputQueue_preDispatchEvent(i32, i32*) #1

declare dso_local i32 @AInputEvent_getSource(i32*) #1

declare dso_local i32 @AInputEvent_getType(i32*) #1

declare dso_local i32 @android_input_get_id(i32*) #1

declare dso_local i32 @android_input_get_id_port(i32*, i32, i32) #1

declare dso_local i64 @is_keyboard_id(i32) #1

declare dso_local i32 @handle_hotplug(i32*, %struct.android_app*, i32*, i32, i32) #1

declare dso_local i32 @android_input_poll_event_type_motion(i32*, i32*, i32, i32) #1

declare dso_local i32 @engine_handle_dpad(i32*, i32*, i32, i32) #1

declare dso_local i32 @AKeyEvent_getKeyCode(i32*) #1

declare dso_local i32 @android_input_poll_event_type_keyboard(i32*, i32, i32*) #1

declare dso_local i32 @android_input_poll_event_type_key(%struct.android_app*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @AInputQueue_finishEvent(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
