; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xdk_joypad.c_xdk_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xdk_joypad.c_xdk_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@AXIS_NONE = common dso_local global i64 0, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@g_xinput_states = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @xdk_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdk_joypad_axis(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @AXIS_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %81

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @AXIS_NEG_GET(i64 %20)
  %22 = icmp sle i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @AXIS_NEG_GET(i64 %24)
  store i32 %25, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @AXIS_POS_GET(i64 %27)
  %29 = icmp sle i32 %28, 5
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @AXIS_POS_GET(i64 %31)
  store i32 %32, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_xinput_states, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %10, align 8
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %60 [
    i32 0, label %42
    i32 1, label %46
    i32 2, label %50
    i32 3, label %54
    i32 4, label %58
    i32 5, label %59
  ]

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %60

46:                                               ; preds = %34
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %34
  br label %60

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %34, %59, %58, %54, %50, %46, %42
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %75

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %70, %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, -32768
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -32767, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @AXIS_NEG_GET(i64) #1

declare dso_local i32 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
