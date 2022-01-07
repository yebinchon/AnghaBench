; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_analog_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_analog_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.retro_keybind*, i32, i32)* @rwebinput_analog_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebinput_analog_pressed(i32* %0, i32 %1, %struct.retro_keybind* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.retro_keybind*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.retro_keybind* %2, %struct.retro_keybind** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @input_conv_analog_id_to_bind_id(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @rwebinput_is_pressed(i32* %20, i32 %21, %struct.retro_keybind* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 -32767, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @rwebinput_is_pressed(i32* %29, i32 %30, %struct.retro_keybind* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 32767, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  ret i32 %40
}

declare dso_local i32 @input_conv_analog_id_to_bind_id(i32, i32, i32, i32) #1

declare dso_local i64 @rwebinput_is_pressed(i32*, i32, %struct.retro_keybind*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
