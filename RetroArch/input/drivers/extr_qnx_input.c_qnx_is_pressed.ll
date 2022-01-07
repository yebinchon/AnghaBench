; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_is_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_is_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, i64)*, i64 (i32, i64)* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.retro_keybind = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { float, i32, %struct.TYPE_9__* }

@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RARCH_GAME_FOCUS_TOGGLE = common dso_local global i32 0, align 4
@input_qnx = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NO_BTN = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, %struct.TYPE_9__*, %struct.retro_keybind*, i32, i32)* @qnx_is_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx_is_pressed(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_9__* %2, %struct.retro_keybind* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.retro_keybind*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.retro_keybind*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = bitcast %struct.TYPE_11__* %8 to { i64, %struct.TYPE_9__* }*
  %18 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 0
  store i64 %1, i64* %18, align 8
  %19 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 1
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.retro_keybind* %3, %struct.retro_keybind** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %20, i64 %22
  store %struct.retro_keybind* %23, %struct.retro_keybind** %13, align 8
  %24 = load %struct.retro_keybind*, %struct.retro_keybind** %13, align 8
  %25 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %141

31:                                               ; preds = %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @qnx_keyboard_pressed(%struct.TYPE_12__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @input_qnx, i32 0, i32 0), align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %36
  store i32 1, i32* %7, align 4
  br label %141

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %47 = icmp ne %struct.retro_keybind* %46, null
  br i1 %47, label %48, label %140

48:                                               ; preds = %45
  %49 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i64 %51
  %53 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %140

56:                                               ; preds = %48
  %57 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %57, i64 %59
  %61 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NO_BTN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %66, i64 %68
  %70 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  br label %80

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %72, %65
  %81 = phi i64 [ %71, %65 ], [ %79, %72 ]
  store i64 %81, i64* %15, align 8
  %82 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %82, i64 %84
  %86 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AXIS_NONE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.retro_keybind*, %struct.retro_keybind** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %91, i64 %93
  %95 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  br label %105

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  br label %105

105:                                              ; preds = %97, %90
  %106 = phi i64 [ %96, %90 ], [ %104, %97 ]
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @NO_BTN, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64 (i32, i64)*, i64 (i32, i64)** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %15, align 8
  %119 = call i64 %115(i32 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %141

122:                                              ; preds = %110, %105
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32 (i32, i64)*, i32 (i32, i64)** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %16, align 8
  %131 = call i32 %127(i32 %129, i64 %130)
  %132 = call i64 @abs(i32 %131)
  %133 = sitofp i64 %132 to float
  %134 = fdiv float %133, 3.276800e+04
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %136 = load float, float* %135, align 8
  %137 = fcmp ogt float %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %122
  store i32 1, i32* %7, align 4
  br label %141

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %48, %45
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %138, %121, %43, %30
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i64 @qnx_keyboard_pressed(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
