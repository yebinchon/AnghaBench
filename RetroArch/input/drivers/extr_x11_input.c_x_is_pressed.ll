; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_is_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_is_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i64)*, i64 (i32, i64)* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.retro_keybind = type { i64, i64, i64, i32, i64 }
%struct.TYPE_13__ = type { float, i32, %struct.TYPE_10__* }

@RETROK_LAST = common dso_local global i64 0, align 8
@RARCH_GAME_FOCUS_TOGGLE = common dso_local global i32 0, align 4
@input_x = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@NO_BTN = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, %struct.TYPE_10__*, %struct.retro_keybind*, i32, i32)* @x_is_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_is_pressed(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_10__* %2, %struct.retro_keybind* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.retro_keybind*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.retro_keybind*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = bitcast %struct.TYPE_13__* %8 to { i64, %struct.TYPE_10__* }*
  %17 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %16, i32 0, i32 0
  store i64 %1, i64* %17, align 8
  %18 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %16, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.retro_keybind* %3, %struct.retro_keybind** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %19, i64 %21
  store %struct.retro_keybind* %22, %struct.retro_keybind** %13, align 8
  %23 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %24 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RETROK_LAST, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %31 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @x_keyboard_pressed(%struct.TYPE_12__* %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @input_x, i32 0, i32 0), align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %35
  store i32 1, i32* %7, align 4
  br label %149

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %28, %6
  %45 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %46 = icmp ne %struct.retro_keybind* %45, null
  br i1 %46, label %47, label %148

47:                                               ; preds = %44
  %48 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i64 %50
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %148

55:                                               ; preds = %47
  %56 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %56, i64 %58
  %60 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NO_BTN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %65, i64 %67
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  br label %79

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %79

79:                                               ; preds = %71, %64
  %80 = phi i64 [ %70, %64 ], [ %78, %71 ]
  store i64 %80, i64* %14, align 8
  %81 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %81, i64 %83
  %85 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AXIS_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %90, i64 %92
  %94 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  br label %104

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %96, %89
  %105 = phi i64 [ %95, %89 ], [ %103, %96 ]
  store i64 %105, i64* %15, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %109 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @x_mouse_button_pressed(%struct.TYPE_12__* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 1, i32* %7, align 4
  br label %149

114:                                              ; preds = %104
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* @NO_BTN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64 (i32, i64)*, i64 (i32, i64)** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %14, align 8
  %127 = call i64 %123(i32 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  store i32 1, i32* %7, align 4
  br label %149

130:                                              ; preds = %118, %114
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32 (i32, i64)*, i32 (i32, i64)** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %15, align 8
  %139 = call i32 %135(i32 %137, i64 %138)
  %140 = call i64 @abs(i32 %139)
  %141 = sitofp i64 %140 to float
  %142 = fdiv float %141, 3.276800e+04
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %144 = load float, float* %143, align 8
  %145 = fcmp ogt float %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  store i32 1, i32* %7, align 4
  br label %149

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %47, %44
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %146, %129, %113, %42
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i64 @x_keyboard_pressed(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @x_mouse_button_pressed(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
