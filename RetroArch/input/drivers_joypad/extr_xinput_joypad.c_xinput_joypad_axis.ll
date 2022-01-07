; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i64)* }

@AXIS_NONE = common dso_local global i64 0, align 8
@g_xinput_states = common dso_local global %struct.TYPE_7__* null, align 8
@dinput_joypad = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @xinput_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xinput_joypad_axis(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @AXIS_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pad_index_to_xuser_index(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_xinput_states, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %99

27:                                               ; preds = %16
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @AXIS_NEG_GET(i64 %28)
  %30 = icmp sle i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @AXIS_NEG_GET(i64 %32)
  store i32 %33, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %42

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @AXIS_POS_GET(i64 %35)
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @AXIS_POS_GET(i64 %39)
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_xinput_states, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %11, align 8
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %78 [
    i32 0, label %50
    i32 1, label %54
    i32 2, label %58
    i32 3, label %62
    i32 4, label %66
    i32 5, label %72
  ]

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %78

54:                                               ; preds = %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %78

58:                                               ; preds = %42
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %78

62:                                               ; preds = %42
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %78

66:                                               ; preds = %42
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 32767
  %71 = sdiv i32 %70, 255
  store i32 %71, i32* %7, align 4
  br label %78

72:                                               ; preds = %42
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 32767
  %77 = sdiv i32 %76, 255
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %42, %72, %66, %62, %58, %54, %50
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %93

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %88, %85
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, -32768
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -32767, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %26, %15
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @pad_index_to_xuser_index(i32) #1

declare dso_local i32 @AXIS_NEG_GET(i64) #1

declare dso_local i32 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
