; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_rwebpad_joypad.c_rwebpad_gamepad_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_rwebpad_joypad.c_rwebpad_gamepad_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@EMSCRIPTEN_EVENT_GAMEPADCONNECTED = common dso_local global i32 0, align 4
@rwebpad_joypad = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EMSCRIPTEN_EVENT_GAMEPADDISCONNECTED = common dso_local global i32 0, align 4
@EM_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i8*)* @rwebpad_gamepad_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebpad_gamepad_cb(i32 %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strncmp(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @EMSCRIPTEN_EVENT_GAMEPADCONNECTED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rwebpad_joypad, i32 0, i32 0), align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @input_autoconfigure_connect(i32 %25, i32* null, i32 %26, i32 %29, i32 %30, i32 %31)
  br label %44

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @EMSCRIPTEN_EVENT_GAMEPADDISCONNECTED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rwebpad_joypad, i32 0, i32 0), align 4
  %42 = call i32 @input_autoconfigure_disconnect(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* @EM_TRUE, align 4
  ret i32 %45
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @input_autoconfigure_connect(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @input_autoconfigure_disconnect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
