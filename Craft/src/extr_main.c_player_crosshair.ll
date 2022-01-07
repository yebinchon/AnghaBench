; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_player_crosshair.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_player_crosshair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@g = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @player_crosshair(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %10 = call float @RADIANS(i32 5)
  store float %10, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %55

28:                                               ; preds = %17
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call float @player_crosshair_distance(i32* %29, i32* %30)
  store float %31, float* %8, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call float @player_player_distance(i32* %32, i32* %33)
  store float %34, float* %9, align 4
  %35 = load float, float* %9, align 4
  %36 = fcmp olt float %35, 9.600000e+01
  br i1 %36, label %37, label %54

37:                                               ; preds = %28
  %38 = load float, float* %8, align 4
  %39 = load float, float* %9, align 4
  %40 = fdiv float %38, %39
  %41 = load float, float* %4, align 4
  %42 = fcmp olt float %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load float, float* %5, align 4
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load float, float* %9, align 4
  %48 = load float, float* %5, align 4
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %43
  %51 = load float, float* %9, align 4
  store float %51, float* %5, align 4
  %52 = load i32*, i32** %7, align 8
  store i32* %52, i32** %3, align 8
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %37, %28
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local float @RADIANS(i32) #1

declare dso_local float @player_crosshair_distance(i32*, i32*) #1

declare dso_local float @player_player_distance(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
