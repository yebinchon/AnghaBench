; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_sdl_joypad.c_sdl_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_sdl_joypad.c_sdl_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@sdl_pads = common dso_local global i32* null, align 8
@SDL_HAT_UP = common dso_local global i32 0, align 4
@SDL_HAT_DOWN = common dso_local global i32 0, align 4
@SDL_HAT_LEFT = common dso_local global i32 0, align 4
@SDL_HAT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @sdl_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_joypad_button(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** @sdl_pads, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %73

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @GET_HAT_DIR(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @GET_HAT(i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %73

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @sdl_pad_get_hat(%struct.TYPE_4__* %38, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %58 [
    i32 128, label %42
    i32 131, label %46
    i32 130, label %50
    i32 129, label %54
  ]

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SDL_HAT_UP, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SDL_HAT_DOWN, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %73

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SDL_HAT_LEFT, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SDL_HAT_RIGHT, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %73

60:                                               ; preds = %23
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @sdl_pad_get_button(%struct.TYPE_4__* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %66, %60
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %59, %54, %50, %46, %42, %36, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @GET_HAT_DIR(i64) #1

declare dso_local i64 @GET_HAT(i64) #1

declare dso_local i32 @sdl_pad_get_hat(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @sdl_pad_get_button(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
