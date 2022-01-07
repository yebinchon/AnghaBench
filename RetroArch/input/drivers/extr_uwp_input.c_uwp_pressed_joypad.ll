; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_uwp_input.c_uwp_pressed_joypad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_uwp_input.c_uwp_pressed_joypad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i64)*, i64 (i32, i64)* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.retro_keybind = type { i64, i64, i64, i32, i64 }
%struct.TYPE_11__ = type { float, i32, %struct.TYPE_8__* }

@RETROK_LAST = common dso_local global i64 0, align 8
@RARCH_GAME_FOCUS_TOGGLE = common dso_local global i32 0, align 4
@input_uwp = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@NO_BTN = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, %struct.TYPE_8__*, %struct.retro_keybind*, i32, i32)* @uwp_pressed_joypad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwp_pressed_joypad(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_8__* %2, %struct.retro_keybind* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.retro_keybind*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.retro_keybind*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = bitcast %struct.TYPE_11__* %8 to { i64, %struct.TYPE_8__* }*
  %17 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %16, i32 0, i32 0
  store i64 %1, i64* %17, align 8
  %18 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %16, i32 0, i32 1
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
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
  br i1 %27, label %28, label %43

28:                                               ; preds = %6
  %29 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %30 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @uwp_keyboard_pressed(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input_uwp, i32 0, i32 0), align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %34
  store i32 1, i32* %7, align 4
  br label %147

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %28, %6
  %44 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %45 = icmp ne %struct.retro_keybind* %44, null
  br i1 %45, label %46, label %146

46:                                               ; preds = %43
  %47 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %47, i64 %49
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %146

54:                                               ; preds = %46
  %55 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %55, i64 %57
  %59 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NO_BTN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %64, i64 %66
  %68 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  br label %78

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %70, %63
  %79 = phi i64 [ %69, %63 ], [ %77, %70 ]
  store i64 %79, i64* %14, align 8
  %80 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %80, i64 %82
  %84 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AXIS_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %89, i64 %91
  %93 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  br label %103

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  br label %103

103:                                              ; preds = %95, %88
  %104 = phi i64 [ %94, %88 ], [ %102, %95 ]
  store i64 %104, i64* %15, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %107 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @uwp_mouse_state(i32 %105, i32 %108, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %147

112:                                              ; preds = %103
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* @NO_BTN, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64 (i32, i64)*, i64 (i32, i64)** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %14, align 8
  %125 = call i64 %121(i32 %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  store i32 1, i32* %7, align 4
  br label %147

128:                                              ; preds = %116, %112
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32 (i32, i64)*, i32 (i32, i64)** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %15, align 8
  %137 = call i32 %133(i32 %135, i64 %136)
  %138 = call i64 @abs(i32 %137)
  %139 = sitofp i64 %138 to float
  %140 = fdiv float %139, 3.276800e+04
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %142 = load float, float* %141, align 8
  %143 = fcmp ogt float %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %128
  store i32 1, i32* %7, align 4
  br label %147

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %46, %43
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %144, %127, %111, %41
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i64 @uwp_keyboard_pressed(i64) #1

declare dso_local i64 @uwp_mouse_state(i32, i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
