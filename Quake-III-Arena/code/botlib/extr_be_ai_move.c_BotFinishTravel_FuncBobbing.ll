; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_FuncBobbing.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_FuncBobbing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64* }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i32, i32 }

@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BotFinishTravel_FuncBobbing(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = call i32 @BotFuncBobStartEnd(%struct.TYPE_12__* %15, i64* %16, i64* %17, i64* %18)
  %20 = load i64*, i64** %6, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = call i32 @VectorSubtract(i64* %20, i64* %21, i64* %22)
  %24 = load i64*, i64** %9, align 8
  %25 = call float @VectorLength(i64* %24)
  store float %25, float* %12, align 4
  %26 = load float, float* %12, align 4
  %27 = fcmp olt float %26, 1.600000e+01
  br i1 %27, label %28, label %83

28:                                               ; preds = %2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = call i32 @VectorSubtract(i64* %31, i64* %34, i64* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MFL_SWIMMING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i64*, i64** %10, align 8
  %48 = call float @VectorNormalize(i64* %47)
  store float %48, float* %12, align 4
  %49 = load float, float* %12, align 4
  %50 = fcmp ogt float %49, 6.000000e+01
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store float 6.000000e+01, float* %12, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load float, float* %12, align 4
  %54 = fmul float 6.000000e+00, %53
  %55 = fsub float 3.600000e+02, %54
  %56 = fsub float 3.600000e+02, %55
  store float %56, float* %13, align 4
  %57 = load float, float* %13, align 4
  %58 = fcmp ogt float %57, 5.000000e+00
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %9, align 8
  %64 = load float, float* %13, align 4
  %65 = call i32 @EA_Move(i32 %62, i64* %63, float %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @VectorCopy(i64* %67, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MFL_SWIMMING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %66
  br label %127

83:                                               ; preds = %2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = call i32 @MoverBottomCenter(%struct.TYPE_12__* %84, i64* %85)
  %87 = load i64*, i64** %11, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = call i32 @VectorSubtract(i64* %87, i64* %90, i64* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MFL_SWIMMING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load i64*, i64** %10, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %83
  %103 = load i64*, i64** %10, align 8
  %104 = call float @VectorNormalize(i64* %103)
  store float %104, float* %12, align 4
  %105 = load float, float* %12, align 4
  %106 = fcmp ogt float %105, 5.000000e+00
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load float, float* %12, align 4
  %109 = fcmp ogt float %108, 1.000000e+02
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store float 1.000000e+02, float* %12, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load float, float* %12, align 4
  %113 = fmul float 4.000000e+00, %112
  %114 = fsub float 4.000000e+02, %113
  %115 = fsub float 4.000000e+02, %114
  store float %115, float* %13, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64*, i64** %10, align 8
  %120 = load float, float* %13, align 4
  %121 = call i32 @EA_Move(i32 %118, i64* %119, float %120)
  %122 = load i64*, i64** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @VectorCopy(i64* %122, i32 %124)
  br label %126

126:                                              ; preds = %111, %102
  br label %127

127:                                              ; preds = %126, %82
  %128 = bitcast %struct.TYPE_11__* %3 to i64*
  %129 = load i64, i64* %128, align 4
  ret i64 %129
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

declare dso_local i32 @BotFuncBobStartEnd(%struct.TYPE_12__*, i64*, i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_12__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
