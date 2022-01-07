; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (...)* }

@g_xinput_states = common dso_local global %struct.TYPE_3__* null, align 8
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i64 0, align 8
@dinput_joypad = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xinput_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xinput_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %52, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %55

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_xinput_states, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i64 @g_XInputGetStateEx(i32 %7, i32* %12)
  %14 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_xinput_states, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %6
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (...) @xinput_joypad_destroy()
  %30 = call i32 @xinput_joypad_init(i32* null)
  br label %55

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_xinput_states, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_xinput_states, align 8
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @xinput_joypad_name(i32 %47)
  %49 = call i32 @input_autoconfigure_disconnect(i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %45, %31
  br label %51

51:                                               ; preds = %50, %6
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %3

55:                                               ; preds = %28, %3
  ret void
}

declare dso_local i64 @g_XInputGetStateEx(i32, i32*) #1

declare dso_local i32 @xinput_joypad_destroy(...) #1

declare dso_local i32 @xinput_joypad_init(i32*) #1

declare dso_local i32 @input_autoconfigure_disconnect(i32, i32) #1

declare dso_local i32 @xinput_joypad_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
