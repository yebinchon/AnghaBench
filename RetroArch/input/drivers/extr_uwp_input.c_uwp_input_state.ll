; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_uwp_input.c_uwp_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_uwp_input.c_uwp_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @uwp_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwp_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  switch i32 %21, label %119 [
    i32 131, label %22
    i32 132, label %74
    i32 130, label %94
    i32 129, label %105
    i32 134, label %105
    i32 128, label %112
    i32 133, label %112
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
  %34 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %34, i64 %36
  %38 = load %struct.retro_keybind*, %struct.retro_keybind** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @uwp_pressed_joypad(i32* %32, i32 %33, %struct.retro_keybind* %38, i32 %39, i32 %40)
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
  br label %120

54:                                               ; preds = %22
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %61, i64 %63
  %65 = load %struct.retro_keybind*, %struct.retro_keybind** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @uwp_pressed_joypad(i32* %59, i32 %60, %struct.retro_keybind* %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  br label %120

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72
  br label %119

74:                                               ; preds = %7
  %75 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %75, i64 %77
  %79 = load %struct.retro_keybind*, %struct.retro_keybind** %78, align 8
  %80 = icmp ne %struct.retro_keybind* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %84, i64 %86
  %88 = load %struct.retro_keybind*, %struct.retro_keybind** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @uwp_pressed_analog(i32* %82, i32 %83, %struct.retro_keybind* %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %120

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %7, %93
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @RETROK_LAST, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @uwp_keyboard_pressed(i32 %99)
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i1 [ false, %94 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %8, align 4
  br label %120

105:                                              ; preds = %7, %7
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 134
  %110 = zext i1 %109 to i32
  %111 = call i32 @uwp_mouse_state(i32 %106, i32 %107, i32 %110)
  store i32 %111, i32* %8, align 4
  br label %120

112:                                              ; preds = %7, %7
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 133
  %117 = zext i1 %116 to i32
  %118 = call i32 @uwp_pointer_state(i32 %113, i32 %114, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %120

119:                                              ; preds = %7, %73
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %112, %105, %102, %81, %70, %52
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @uwp_pressed_joypad(i32*, i32, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @uwp_pressed_analog(i32*, i32, %struct.retro_keybind*, i32, i32, i32) #1

declare dso_local i32 @uwp_keyboard_pressed(i32) #1

declare dso_local i32 @uwp_mouse_state(i32, i32, i32) #1

declare dso_local i32 @uwp_pointer_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
