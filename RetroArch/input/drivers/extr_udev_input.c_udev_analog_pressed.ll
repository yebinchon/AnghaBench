; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_analog_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_analog_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i64, i64 }

@udev_key_state = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.retro_keybind*, i32, i32)* @udev_analog_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_analog_pressed(%struct.retro_keybind* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.retro_keybind*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.retro_keybind* %0, %struct.retro_keybind** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @input_conv_analog_id_to_bind_id(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.retro_keybind*, %struct.retro_keybind** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %16, i64 %18
  %20 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load i32, i32* @udev_key_state, align 4
  %25 = load i32*, i32** @rarch_keysym_lut, align 8
  %26 = load %struct.retro_keybind*, %struct.retro_keybind** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %26, i64 %28
  %30 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @BIT_GET(i32 %24, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -32767, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %23, %3
  %38 = load %struct.retro_keybind*, %struct.retro_keybind** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %38, i64 %40
  %42 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load i32, i32* @udev_key_state, align 4
  %47 = load i32*, i32** @rarch_keysym_lut, align 8
  %48 = load %struct.retro_keybind*, %struct.retro_keybind** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i64 %50
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @BIT_GET(i32 %46, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 32767, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %45, %37
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  ret i32 %62
}

declare dso_local i32 @input_conv_analog_id_to_bind_id(i32, i32, i32, i32) #1

declare dso_local i64 @BIT_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
