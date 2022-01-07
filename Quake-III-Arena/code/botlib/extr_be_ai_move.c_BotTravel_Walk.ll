; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Walk.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64* }
%struct.TYPE_12__ = type { i32, i64*, i64* }
%struct.TYPE_11__ = type { i32 }

@qtrue = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@MFL_WALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTravel_Walk(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %14, %19
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %27, %32
  %34 = load i64*, i64** %8, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = call float @VectorNormalize(i64* %38)
  store float %39, float* %6, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* @qtrue, align 4
  %43 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %40, i64* %41, i32 %42, %struct.TYPE_11__* %3)
  %44 = load float, float* %6, align 4
  %45 = fcmp olt float %44, 1.000000e+01
  br i1 %45, label %46, label %77

46:                                               ; preds = %2
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %51, %56
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %64, %69
  %71 = load i64*, i64** %8, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 %70, i64* %72, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  store i64 0, i64* %74, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = call float @VectorNormalize(i64* %75)
  store float %76, float* %6, align 4
  br label %77

77:                                               ; preds = %46, %2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @AAS_AreaPresenceType(i32 %80)
  %82 = load i32, i32* @PRESENCE_NORMAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = load float, float* %6, align 4
  %87 = fcmp olt float %86, 2.000000e+01
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @EA_Crouch(i32 %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call float @BotGapDistance(i64* %97, i64* %98, i32 %101)
  store float %102, float* %6, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MFL_WALK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %94
  %110 = load float, float* %6, align 4
  %111 = fcmp ogt float %110, 0.000000e+00
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load float, float* %6, align 4
  %114 = fmul float 1.000000e+00, %113
  %115 = fsub float 1.800000e+02, %114
  %116 = fsub float 2.000000e+02, %115
  store float %116, float* %7, align 4
  br label %118

117:                                              ; preds = %109
  store float 2.000000e+02, float* %7, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @EA_Walk(i32 %121)
  br label %133

123:                                              ; preds = %94
  %124 = load float, float* %6, align 4
  %125 = fcmp ogt float %124, 0.000000e+00
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load float, float* %6, align 4
  %128 = fmul float 2.000000e+00, %127
  %129 = fsub float 3.600000e+02, %128
  %130 = fsub float 4.000000e+02, %129
  store float %130, float* %7, align 4
  br label %132

131:                                              ; preds = %123
  store float 4.000000e+02, float* %7, align 4
  br label %132

132:                                              ; preds = %131, %126
  br label %133

133:                                              ; preds = %132, %118
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64*, i64** %8, align 8
  %138 = load float, float* %7, align 4
  %139 = call i32 @EA_Move(i32 %136, i64* %137, float %138)
  %140 = load i64*, i64** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @VectorCopy(i64* %140, i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  ret i32 %145
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_10__*, i64*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @AAS_AreaPresenceType(i32) #1

declare dso_local i32 @EA_Crouch(i32) #1

declare dso_local float @BotGapDistance(i64*, i64*, i32) #1

declare dso_local i32 @EA_Walk(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
