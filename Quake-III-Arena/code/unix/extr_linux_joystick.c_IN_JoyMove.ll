; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_joystick.c_IN_JoyMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_joystick.c_IN_JoyMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }
%struct.js_event = type { i32, i32, i32 }

@IN_JoyMove.axes_state = internal global [16 x i32] zeroinitializer, align 16
@IN_JoyMove.old_axes = internal global i32 0, align 4
@joy_fd = common dso_local global i32 0, align 4
@JS_EVENT_BUTTON = common dso_local global i32 0, align 4
@SE_KEY = common dso_local global i32 0, align 4
@K_JOY1 = common dso_local global i64 0, align 8
@JS_EVENT_AXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown joystick event type\0A\00", align 1
@joy_threshold = common dso_local global %struct.TYPE_2__* null, align 8
@joy_keys = common dso_local global i64* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_JoyMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.js_event, align 4
  %5 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @joy_fd, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %148

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %54, %9
  store i32 -1, i32* %3, align 4
  %11 = load i32, i32* @joy_fd, align 4
  %12 = call i32 @read(i32 %11, %struct.js_event* %4, i32 12)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %55

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @JS_EVENT_BUTTON, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* @SE_KEY, align 4
  %24 = load i64, i64* @K_JOY1, align 8
  %25 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @Sys_QueEvent(i32 0, i32 %23, i64 %28, i32 %30, i32 0, i32* null)
  br label %53

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @JS_EVENT_AXIS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* @IN_JoyMove.axes_state, i64 0, i64 %48
  store i32 %45, i32* %49, align 4
  br label %52

50:                                               ; preds = %32
  %51 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %22
  br label %54

54:                                               ; preds = %53, %42
  br i1 true, label %10, label %55

55:                                               ; preds = %54, %15
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %93, %55
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* @IN_JoyMove.axes_state, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %64, 3.276700e+04
  store float %65, float* %5, align 4
  %66 = load float, float* %5, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @joy_threshold, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = fneg float %69
  %71 = fcmp olt float %66, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* %2, align 4
  %74 = mul nsw i32 %73, 2
  %75 = shl i32 1, %74
  %76 = load i32, i32* %1, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %1, align 4
  br label %92

78:                                               ; preds = %59
  %79 = load float, float* %5, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @joy_threshold, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 4
  %83 = fcmp ogt float %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* %2, align 4
  %86 = mul nsw i32 %85, 2
  %87 = add nsw i32 %86, 1
  %88 = shl i32 1, %87
  %89 = load i32, i32* %1, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %1, align 4
  br label %91

91:                                               ; preds = %84, %78
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %56

96:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %143, %96
  %98 = load i32, i32* %2, align 4
  %99 = icmp slt i32 %98, 16
  br i1 %99, label %100, label %146

100:                                              ; preds = %97
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* %2, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load i32, i32* @IN_JoyMove.old_axes, align 4
  %108 = load i32, i32* %2, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @SE_KEY, align 4
  %114 = load i64*, i64** @joy_keys, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @qtrue, align 4
  %120 = call i32 @Sys_QueEvent(i32 0, i32 %113, i64 %118, i32 %119, i32 0, i32* null)
  br label %121

121:                                              ; preds = %112, %106, %100
  %122 = load i32, i32* %1, align 4
  %123 = load i32, i32* %2, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @IN_JoyMove.old_axes, align 4
  %129 = load i32, i32* %2, align 4
  %130 = shl i32 1, %129
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load i32, i32* @SE_KEY, align 4
  %135 = load i64*, i64** @joy_keys, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @qfalse, align 4
  %141 = call i32 @Sys_QueEvent(i32 0, i32 %134, i64 %139, i32 %140, i32 0, i32* null)
  br label %142

142:                                              ; preds = %133, %127, %121
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %97

146:                                              ; preds = %97
  %147 = load i32, i32* %1, align 4
  store i32 %147, i32* @IN_JoyMove.old_axes, align 4
  br label %148

148:                                              ; preds = %146, %8
  ret void
}

declare dso_local i32 @read(i32, %struct.js_event*, i32) #1

declare dso_local i32 @Sys_QueEvent(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
