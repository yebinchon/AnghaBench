; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_12__ = type { i64*, i64* }
%struct.TYPE_11__ = type { i32 }

@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTravel_WalkOffLedge(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @VectorSubtract(i64* %14, i64* %17, i64* %18)
  %20 = load i64*, i64** %7, align 8
  %21 = call float @VectorNormalize(i64* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* @qtrue, align 4
  %25 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %22, i64* %23, i32 %24, %struct.TYPE_11__* %3)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = call i32 @VectorSubtract(i64* %28, i64* %31, i64* %32)
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 0, i64* %35, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call float @VectorLength(i64* %36)
  store float %37, float* %10, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %42, %47
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %55, %60
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64 %61, i64* %63, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 0, i64* %65, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = call float @VectorNormalize(i64* %66)
  store float %67, float* %8, align 4
  %68 = load float, float* %8, align 4
  %69 = fcmp olt float %68, 4.800000e+01
  br i1 %69, label %70, label %116

70:                                               ; preds = %2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %75, %80
  %82 = load i64*, i64** %6, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %88, %93
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  store i64 %94, i64* %96, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  store i64 0, i64* %98, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = call float @VectorNormalize(i64* %99)
  %101 = load float, float* %10, align 4
  %102 = fcmp olt float %101, 2.000000e+01
  br i1 %102, label %103, label %104

103:                                              ; preds = %70
  store float 1.000000e+02, float* %9, align 4
  br label %115

104:                                              ; preds = %70
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @AAS_HorizontalVelocityForJump(i32 0, i64* %107, i64* %110, float* %9)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  store float 4.000000e+02, float* %9, align 4
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %103
  br label %130

116:                                              ; preds = %2
  %117 = load float, float* %10, align 4
  %118 = fcmp olt float %117, 2.000000e+01
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load float, float* %8, align 4
  %121 = fcmp ogt float %120, 6.400000e+01
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store float 6.400000e+01, float* %8, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load float, float* %8, align 4
  %125 = fmul float 4.000000e+00, %124
  %126 = fsub float 2.560000e+02, %125
  %127 = fsub float 4.000000e+02, %126
  store float %127, float* %9, align 4
  br label %129

128:                                              ; preds = %116
  store float 4.000000e+02, float* %9, align 4
  br label %129

129:                                              ; preds = %128, %123
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = load i64*, i64** %6, align 8
  %133 = load i32, i32* @qtrue, align 4
  %134 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %131, i64* %132, i32 %133, %struct.TYPE_11__* %3)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i64*, i64** %6, align 8
  %139 = load float, float* %9, align 4
  %140 = call i32 @EA_Move(i32 %137, i64* %138, float %139)
  %141 = load i64*, i64** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @VectorCopy(i64* %141, i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  ret i32 %146
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_10__*, i64*, i32, %struct.TYPE_11__*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(i32, i64*, i64*, float*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
