; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @rwebinput_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebinput_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %16, align 8
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %137 [
    i32 131, label %23
    i32 132, label %77
    i32 130, label %113
    i32 129, label %117
    i32 134, label %122
    i32 128, label %127
    i32 133, label %132
  ]

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %36, i64 %38
  %40 = load %struct.retro_keybind*, %struct.retro_keybind** %39, align 8
  %41 = ptrtoint %struct.retro_keybind* %40 to i32
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @rwebinput_is_pressed(%struct.TYPE_5__* %33, i32 %34, i32 %35, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* %17, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %18, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %18, align 4
  br label %51

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %17, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %8, align 4
  br label %138

56:                                               ; preds = %23
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %63, i64 %65
  %67 = load %struct.retro_keybind*, %struct.retro_keybind** %66, align 8
  %68 = ptrtoint %struct.retro_keybind* %67 to i32
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @rwebinput_is_pressed(%struct.TYPE_5__* %61, i32 %62, i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %138

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75
  br label %137

77:                                               ; preds = %7
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %80, i64 %82
  %84 = load %struct.retro_keybind*, %struct.retro_keybind** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @rwebinput_analog_pressed(%struct.TYPE_5__* %78, i32 %79, %struct.retro_keybind* %84, i32 %85, i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %77
  %91 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %91, i64 %93
  %95 = load %struct.retro_keybind*, %struct.retro_keybind** %94, align 8
  %96 = icmp ne %struct.retro_keybind* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %105, i64 %107
  %109 = load %struct.retro_keybind*, %struct.retro_keybind** %108, align 8
  %110 = call i32 @input_joypad_analog(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, %struct.retro_keybind* %109)
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %97, %90, %77
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %8, align 4
  br label %138

113:                                              ; preds = %7
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @rwebinput_key_pressed(%struct.TYPE_5__* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %138

117:                                              ; preds = %7
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @rwebinput_mouse_state(i32* %119, i32 %120, i32 0)
  store i32 %121, i32* %8, align 4
  br label %138

122:                                              ; preds = %7
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @rwebinput_mouse_state(i32* %124, i32 %125, i32 1)
  store i32 %126, i32* %8, align 4
  br label %138

127:                                              ; preds = %7
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @rwebinput_pointer_device_state(i32* %129, i32 %130, i32 0)
  store i32 %131, i32* %8, align 4
  br label %138

132:                                              ; preds = %7
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @rwebinput_pointer_device_state(i32* %134, i32 %135, i32 1)
  store i32 %136, i32* %8, align 4
  br label %138

137:                                              ; preds = %7, %76
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %132, %127, %122, %117, %113, %111, %73, %54
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @rwebinput_is_pressed(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @rwebinput_analog_pressed(%struct.TYPE_5__*, i32, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(i32, i32, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @rwebinput_key_pressed(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rwebinput_mouse_state(i32*, i32, i32) #1

declare dso_local i32 @rwebinput_pointer_device_state(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
