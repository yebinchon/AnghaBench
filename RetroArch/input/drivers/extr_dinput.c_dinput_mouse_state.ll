; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_mouse_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_mouse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@MAX_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dinput_input*, i32, i32)* @dinput_mouse_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dinput_mouse_state(%struct.dinput_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dinput_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_USERS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %97

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %96 [
    i32 129, label %28
    i32 128, label %32
    i32 134, label %36
    i32 132, label %40
    i32 130, label %44
    i32 131, label %54
    i32 135, label %64
    i32 136, label %74
    i32 133, label %84
    i32 138, label %88
    i32 137, label %92
  ]

28:                                               ; preds = %26
  %29 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %30 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %26
  %33 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %34 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %97

36:                                               ; preds = %26
  %37 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %38 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %97

40:                                               ; preds = %26
  %41 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %42 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %26
  %45 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %46 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %52 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %51, i32 0, i32 4
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %97

54:                                               ; preds = %26
  %55 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %56 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %62 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %61, i32 0, i32 5
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %97

64:                                               ; preds = %26
  %65 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %66 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %72 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %71, i32 0, i32 6
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %97

74:                                               ; preds = %26
  %75 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %76 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %82 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %81, i32 0, i32 7
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %97

84:                                               ; preds = %26
  %85 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %86 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  br label %97

88:                                               ; preds = %26
  %89 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %90 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %26
  %93 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %94 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %92, %88, %84, %80, %70, %60, %50, %40, %36, %32, %28, %25, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
