; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_is_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_is_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (i32, i64)*, i64 (i32, i64)* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.retro_keybind = type { i32, i64, i64, i32, i64 }
%struct.TYPE_12__ = type { float, i32, %struct.TYPE_9__* }

@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@RARCH_GAME_FOCUS_TOGGLE = common dso_local global i32 0, align 4
@input_rwebinput = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NO_BTN = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, %struct.TYPE_9__*, %struct.retro_keybind*, i32, i32)* @rwebinput_is_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebinput_is_pressed(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_9__* %2, %struct.retro_keybind* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.retro_keybind*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.retro_keybind*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = bitcast %struct.TYPE_12__* %8 to { i64, %struct.TYPE_9__* }*
  %18 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 0
  store i64 %1, i64* %18, align 8
  %19 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 1
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store %struct.retro_keybind* %3, %struct.retro_keybind** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %150

23:                                               ; preds = %6
  %24 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %24, i64 %26
  store %struct.retro_keybind* %27, %struct.retro_keybind** %13, align 8
  %28 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %29 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @RETROK_LAST, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @rwebinput_key_pressed(%struct.TYPE_11__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @input_rwebinput, i32 0, i32 0), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %39
  store i32 1, i32* %7, align 4
  br label %151

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %34, %23
  %49 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %50 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %149

53:                                               ; preds = %48
  %54 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %54, i64 %56
  %58 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NO_BTN, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %63, i64 %65
  %67 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  br label %77

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %69, %62
  %78 = phi i64 [ %68, %62 ], [ %76, %69 ]
  store i64 %78, i64* %15, align 8
  %79 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %79, i64 %81
  %83 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AXIS_NONE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %88, i64 %90
  %92 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  br label %102

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %94, %87
  %103 = phi i64 [ %93, %87 ], [ %101, %94 ]
  store i64 %103, i64* %16, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %110 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @rwebinput_mouse_state(i32* %108, i32 %111, i32 0)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %151

115:                                              ; preds = %106, %102
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @NO_BTN, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64 (i32, i64)*, i64 (i32, i64)** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %15, align 8
  %128 = call i64 %124(i32 %126, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i32 1, i32* %7, align 4
  br label %151

131:                                              ; preds = %119, %115
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32 (i32, i64)*, i32 (i32, i64)** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %16, align 8
  %140 = call i32 %136(i32 %138, i64 %139)
  %141 = call i64 @abs(i32 %140)
  %142 = sitofp i64 %141 to float
  %143 = fdiv float %142, 3.276800e+04
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %145 = load float, float* %144, align 8
  %146 = fcmp ogt float %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %131
  store i32 1, i32* %7, align 4
  br label %151

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %48
  br label %150

150:                                              ; preds = %149, %6
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %147, %130, %114, %46
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i64 @rwebinput_key_pressed(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rwebinput_mouse_state(i32*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
