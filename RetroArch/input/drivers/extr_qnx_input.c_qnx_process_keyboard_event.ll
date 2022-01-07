; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_process_keyboard_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_process_keyboard_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SCREEN_PROPERTY_KEY_FLAGS = common dso_local global i32 0, align 4
@SCREEN_PROPERTY_KEY_CAP = common dso_local global i32 0, align 4
@SCREEN_PROPERTY_KEY_MODIFIERS = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@KEY_REPEAT = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @qnx_process_keyboard_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx_process_keyboard_event(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SCREEN_PROPERTY_KEY_FLAGS, align 4
  %15 = call i32 @screen_get_event_property_iv(i32 %13, i32 %14, i32* %7)
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SCREEN_PROPERTY_KEY_CAP, align 4
  %18 = call i32 @screen_get_event_property_iv(i32 %16, i32 %17, i32* %8)
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SCREEN_PROPERTY_KEY_MODIFIERS, align 4
  %21 = call i32 @screen_get_event_property_iv(i32 %19, i32 %20, i32* %9)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @input_keymaps_translate_keysym_to_rk(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @KEY_DOWN, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @KEY_REPEAT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %37 = call i32 @input_keyboard_event(i32 %33, i32 %34, i32 0, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @BIT_SET(i32 %47, i32 %48)
  br label %63

50:                                               ; preds = %41, %38
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @BIT_CLEAR(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53, %50
  br label %63

63:                                               ; preds = %62, %44
  ret void
}

declare dso_local i32 @screen_get_event_property_iv(i32, i32, i32*) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT_SET(i32, i32) #1

declare dso_local i32 @BIT_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
