; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_pressed_analog.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_pressed_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { i32* }
%struct.retro_keybind = type { i64, i32 }

@RETROK_LAST = common dso_local global i64 0, align 8
@rarch_keysym_lut = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dinput_input*, %struct.retro_keybind*, i32, i32)* @dinput_pressed_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dinput_pressed_analog(%struct.dinput_input* %0, %struct.retro_keybind* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dinput_input*, align 8
  %7 = alloca %struct.retro_keybind*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.retro_keybind*, align 8
  %11 = alloca %struct.retro_keybind*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dinput_input* %0, %struct.dinput_input** %6, align 8
  store %struct.retro_keybind* %1, %struct.retro_keybind** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @input_conv_analog_id_to_bind_id(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.retro_keybind*, %struct.retro_keybind** %7, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %23, i64 %25
  store %struct.retro_keybind* %26, %struct.retro_keybind** %10, align 8
  %27 = load %struct.retro_keybind*, %struct.retro_keybind** %7, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %27, i64 %29
  store %struct.retro_keybind* %30, %struct.retro_keybind** %11, align 8
  %31 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %32 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.retro_keybind*, %struct.retro_keybind** %11, align 8
  %37 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %4
  store i32 0, i32* %5, align 4
  br label %97

41:                                               ; preds = %35
  %42 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %43 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RETROK_LAST, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32*, i32** @rarch_keysym_lut, align 8
  %49 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %50 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load %struct.dinput_input*, %struct.dinput_input** %6, align 8
  %57 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store i32 -32767, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %11, align 8
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RETROK_LAST, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i32*, i32** @rarch_keysym_lut, align 8
  %75 = load %struct.retro_keybind*, %struct.retro_keybind** %11, align 8
  %76 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  %82 = load %struct.dinput_input*, %struct.dinput_input** %6, align 8
  %83 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32 32767, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %40
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @input_conv_analog_id_to_bind_id(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
