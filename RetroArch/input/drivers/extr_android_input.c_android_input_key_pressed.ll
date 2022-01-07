; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_key_pressed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_key_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i64, i64)*, i64 (i64, i64)* }
%struct.TYPE_9__ = type { float, i64, %struct.TYPE_12__* }

@input_autoconf_binds = common dso_local global %struct.TYPE_12__** null, align 8
@INPUT_ACTION_AXIS_THRESHOLD = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@input_config_binds = common dso_local global %struct.TYPE_11__** null, align 8
@NO_BTN = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @android_input_key_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_key_pressed(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @input_autoconf_binds, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %10, i64 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %13, align 8
  %14 = load i32, i32* @INPUT_ACTION_AXIS_THRESHOLD, align 4
  %15 = call float* @input_driver_get_float(i32 %14)
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store float %16, float* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_config_binds, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @android_keyboard_port_input_pressed(%struct.TYPE_11__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %121

29:                                               ; preds = %21, %2
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_config_binds, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %30, i64 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NO_BTN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_config_binds, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %41, i64 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %57

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %49, %40
  %58 = phi i64 [ %48, %40 ], [ %56, %49 ]
  store i64 %58, i64* %6, align 8
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_config_binds, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %59, i64 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AXIS_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %57
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_config_binds, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %70, i64 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  br label %86

78:                                               ; preds = %57
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %78, %69
  %87 = phi i64 [ %77, %69 ], [ %85, %78 ]
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @NO_BTN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64 (i64, i64)*, i64 (i64, i64)** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i64 %96(i64 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  store i32 1, i32* %3, align 4
  br label %121

103:                                              ; preds = %91, %86
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32 (i64, i64)*, i32 (i64, i64)** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 %108(i64 %110, i64 %111)
  %113 = call i64 @abs(i32 %112)
  %114 = sitofp i64 %113 to float
  %115 = fdiv float %114, 3.276800e+04
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %117 = load float, float* %116, align 8
  %118 = fcmp ogt float %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %121

120:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %119, %102, %28
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local float* @input_driver_get_float(i32) #1

declare dso_local i64 @android_keyboard_port_input_pressed(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
