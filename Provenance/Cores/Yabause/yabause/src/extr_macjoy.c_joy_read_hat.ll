; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_read_hat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_read_hat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@JOY_HAT_UP = common dso_local global i32 0, align 4
@JOY_HAT_RIGHT = common dso_local global i32 0, align 4
@JOY_HAT_DOWN = common dso_local global i32 0, align 4
@JOY_HAT_LEFT = common dso_local global i32 0, align 4
@JOY_HAT_CENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @joy_read_hat(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = call i32 @joy_read_element(%struct.TYPE_5__* %14, %struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %21, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %38, %46
  %48 = add nsw i32 %47, 1
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %13
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %79 [
    i32 0, label %55
    i32 1, label %57
    i32 2, label %61
    i32 3, label %63
    i32 4, label %67
    i32 5, label %69
    i32 6, label %73
    i32 7, label %75
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @JOY_HAT_UP, align 4
  store i32 %56, i32* %3, align 4
  br label %81

57:                                               ; preds = %53
  %58 = load i32, i32* @JOY_HAT_UP, align 4
  %59 = load i32, i32* @JOY_HAT_RIGHT, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %53
  %62 = load i32, i32* @JOY_HAT_RIGHT, align 4
  store i32 %62, i32* %3, align 4
  br label %81

63:                                               ; preds = %53
  %64 = load i32, i32* @JOY_HAT_RIGHT, align 4
  %65 = load i32, i32* @JOY_HAT_DOWN, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %53
  %68 = load i32, i32* @JOY_HAT_DOWN, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %53
  %70 = load i32, i32* @JOY_HAT_DOWN, align 4
  %71 = load i32, i32* @JOY_HAT_LEFT, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %3, align 4
  br label %81

73:                                               ; preds = %53
  %74 = load i32, i32* @JOY_HAT_LEFT, align 4
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %53
  %76 = load i32, i32* @JOY_HAT_LEFT, align 4
  %77 = load i32, i32* @JOY_HAT_UP, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %53
  %80 = load i32, i32* @JOY_HAT_CENTER, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %75, %73, %69, %67, %63, %61, %57, %55, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @joy_read_element(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
