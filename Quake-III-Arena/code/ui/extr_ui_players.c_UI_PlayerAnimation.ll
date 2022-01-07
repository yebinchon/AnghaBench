; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_PlayerAnimation.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_PlayerAnimation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, float, i64 }

@uiInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@LEGS_TURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*, float*, i32*, i32*, float*)* @UI_PlayerAnimation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_PlayerAnimation(%struct.TYPE_10__* %0, i32* %1, i32* %2, float* %3, i32* %4, i32* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store float* %3, float** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store float* %6, float** %14, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %7
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = call i32 @UI_LegsSequencing(%struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* @LEGS_IDLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load i32, i32* @LEGS_TURN, align 4
  %49 = call i32 @UI_RunLerpFrame(%struct.TYPE_10__* %45, %struct.TYPE_12__* %47, i32 %48)
  br label %58

50:                                               ; preds = %35, %27
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @UI_RunLerpFrame(%struct.TYPE_10__* %51, %struct.TYPE_12__* %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load float, float* %71, align 8
  %73 = load float*, float** %11, align 8
  store float %72, float* %73, align 4
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %58
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %58
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = call i32 @UI_TorsoSequencing(%struct.TYPE_10__* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @UI_RunLerpFrame(%struct.TYPE_10__* %89, %struct.TYPE_12__* %91, i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load float, float* %108, align 8
  %110 = load float*, float** %14, align 8
  store float %109, float* %110, align 4
  ret void
}

declare dso_local i32 @UI_LegsSequencing(%struct.TYPE_10__*) #1

declare dso_local i32 @UI_RunLerpFrame(%struct.TYPE_10__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @UI_TorsoSequencing(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
