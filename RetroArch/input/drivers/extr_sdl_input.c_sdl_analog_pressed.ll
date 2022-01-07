; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_analog_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_analog_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i64 }

@RETROK_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.retro_keybind*, i32, i32)* @sdl_analog_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_analog_pressed(i32* %0, %struct.retro_keybind* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.retro_keybind*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.retro_keybind* %1, %struct.retro_keybind** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @input_conv_analog_id_to_bind_id(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %18, i64 %20
  %22 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RETROK_LAST, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %27, i64 %29
  %31 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @sdl_key_pressed(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -32767, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %26, %4
  %37 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %37, i64 %39
  %41 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RETROK_LAST, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %46, i64 %48
  %50 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @sdl_key_pressed(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 32767, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %45, %36
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  ret i32 %58
}

declare dso_local i32 @input_conv_analog_id_to_bind_id(i32, i32, i32, i32) #1

declare dso_local i64 @sdl_key_pressed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
