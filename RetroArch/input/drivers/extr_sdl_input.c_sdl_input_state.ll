; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }
%struct.TYPE_7__ = type { i32 }

@INPUT_DEVICE_TYPE_NONE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @sdl_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @INPUT_DEVICE_TYPE_NONE, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %17, align 8
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %144 [
    i32 132, label %25
    i32 133, label %77
    i32 129, label %113
    i32 128, label %117
    i32 134, label %117
    i32 131, label %129
    i32 130, label %140
  ]

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %37, i64 %39
  %41 = load %struct.retro_keybind*, %struct.retro_keybind** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @sdl_joypad_device_state(%struct.TYPE_7__* %35, i32 %36, %struct.retro_keybind* %41, i32 %42, i32 %43, i32* %16)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %19, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %19, align 4
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %18, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load i32, i32* %19, align 4
  store i32 %56, i32* %8, align 4
  br label %145

57:                                               ; preds = %25
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %64, i64 %66
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @sdl_joypad_device_state(%struct.TYPE_7__* %62, i32 %63, %struct.retro_keybind* %68, i32 %69, i32 %70, i32* %16)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %145

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75
  br label %144

77:                                               ; preds = %7
  %78 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %78, i64 %80
  %82 = load %struct.retro_keybind*, %struct.retro_keybind** %81, align 8
  %83 = icmp ne %struct.retro_keybind* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %77
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %86 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %86, i64 %88
  %90 = load %struct.retro_keybind*, %struct.retro_keybind** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @sdl_analog_pressed(%struct.TYPE_7__* %85, %struct.retro_keybind* %90, i32 %91, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %84
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %104, i64 %106
  %108 = load %struct.retro_keybind*, %struct.retro_keybind** %107, align 8
  %109 = call i32 @input_joypad_analog(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, %struct.retro_keybind* %108)
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %96, %84
  %111 = load i32, i32* %20, align 4
  store i32 %111, i32* %8, align 4
  br label %145

112:                                              ; preds = %77
  br label %144

113:                                              ; preds = %7
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @sdl_mouse_device_state(%struct.TYPE_7__* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %145

117:                                              ; preds = %7, %7
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 134
  %126 = zext i1 %125 to i32
  %127 = call i32 @sdl_pointer_device_state(%struct.TYPE_7__* %121, i32 %122, i32 %123, i32 %126)
  store i32 %127, i32* %8, align 4
  br label %145

128:                                              ; preds = %117
  br label %144

129:                                              ; preds = %7
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @RETROK_LAST, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @sdl_key_pressed(i32 %134)
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i1 [ false, %129 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %8, align 4
  br label %145

140:                                              ; preds = %7
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @sdl_lightgun_device_state(%struct.TYPE_7__* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  br label %145

144:                                              ; preds = %7, %128, %112, %76
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %140, %137, %120, %113, %110, %73, %55
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @sdl_joypad_device_state(%struct.TYPE_7__*, i32, %struct.retro_keybind*, i32, i32, i32*) #1

declare dso_local i32 @sdl_analog_pressed(%struct.TYPE_7__*, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(i32, i32, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @sdl_mouse_device_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sdl_pointer_device_state(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @sdl_key_pressed(i32) #1

declare dso_local i32 @sdl_lightgun_device_state(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
