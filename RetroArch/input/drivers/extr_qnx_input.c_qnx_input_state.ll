; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @qnx_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %81 [
    i32 130, label %22
    i32 129, label %69
    i32 128, label %73
    i32 131, label %73
  ]

22:                                               ; preds = %7
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %35, i64 %37
  %39 = load %struct.retro_keybind*, %struct.retro_keybind** %38, align 8
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @qnx_is_pressed(i32* %32, i32 %33, i32 %34, %struct.retro_keybind* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %17, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %18, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %18, align 4
  br label %49

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %17, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %8, align 4
  br label %83

54:                                               ; preds = %22
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %58, i64 %60
  %62 = load %struct.retro_keybind*, %struct.retro_keybind** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @qnx_is_pressed(i32* %55, i32 %56, i32 %57, %struct.retro_keybind* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %83

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  br label %82

69:                                               ; preds = %7
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @qnx_keyboard_pressed(i32* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %83

73:                                               ; preds = %7, %7
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 131
  %79 = zext i1 %78 to i32
  %80 = call i32 @qnx_pointer_input_state(i32* %74, i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %83

81:                                               ; preds = %7
  br label %82

82:                                               ; preds = %81, %68
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %73, %69, %66, %52
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @qnx_is_pressed(i32*, i32, i32, %struct.retro_keybind*, i32) #1

declare dso_local i32 @qnx_keyboard_pressed(i32*, i32) #1

declare dso_local i32 @qnx_pointer_input_state(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
