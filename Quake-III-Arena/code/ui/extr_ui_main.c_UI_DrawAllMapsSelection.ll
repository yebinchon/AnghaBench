; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawAllMapsSelection.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawAllMapsSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ui_currentNetMap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ui_currentMap = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@uiInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, i32, i32, i64)* @UI_DrawAllMapsSelection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawAllMapsSelection(%struct.TYPE_8__* %0, float %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentNetMap, i32 0, i32 0), align 4
  br label %18

16:                                               ; preds = %5
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_currentMap, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load float, float* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1), align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @Text_Paint(i32 %29, i32 %32, float %33, i32 %34, i32 %40, i32 0, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %26, %22, %18
  ret void
}

declare dso_local i32 @Text_Paint(i32, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
