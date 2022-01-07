; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_analog_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_analog_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.retro_keybind = type { i64, i64 }

@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.retro_keybind*, i32, i32)* @input_wl_analog_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_wl_analog_pressed(%struct.TYPE_3__* %0, %struct.retro_keybind* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.retro_keybind*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.retro_keybind* %1, %struct.retro_keybind** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @input_conv_analog_id_to_bind_id(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %19 = icmp ne %struct.retro_keybind* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %4
  %21 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %21, i64 %23
  %25 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @rarch_keysym_lut, align 8
  %37 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %37, i64 %39
  %41 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @BIT_GET(i32 %35, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 -32767, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %32, %28, %20, %4
  %49 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %50 = icmp ne %struct.retro_keybind* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %52, i64 %54
  %56 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @rarch_keysym_lut, align 8
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i64 %70
  %72 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @BIT_GET(i32 %66, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  store i32 32767, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %63, %59, %51, %48
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  ret i32 %82
}

declare dso_local i32 @input_conv_analog_id_to_bind_id(i32, i32, i32, i32) #1

declare dso_local i64 @BIT_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
