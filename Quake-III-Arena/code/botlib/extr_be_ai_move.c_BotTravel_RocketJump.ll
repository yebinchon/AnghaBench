; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_RocketJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_RocketJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64*, i32* }
%struct.TYPE_11__ = type { i64*, i64* }

@PITCH = common dso_local global i64 0, align 8
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@weapindex_rocketlauncher = common dso_local global %struct.TYPE_12__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_RocketJump(%struct.TYPE_10__* noalias sret %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %5, align 8
  %9 = call i32 @BotClearMoveResult(%struct.TYPE_10__* %0)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %14, %19
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %27, %32
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = call float @VectorNormalize(i64* %38)
  store float %39, float* %7, align 4
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @Vector2Angles(i64* %40, i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @PITCH, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 90, i32* %47, align 4
  %48 = load float, float* %7, align 4
  %49 = fcmp olt float %48, 5.000000e+00
  br i1 %49, label %50, label %125

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AngleDiff(i32 %54, i32 %59)
  %61 = call i32 @fabs(i32 %60)
  %62 = icmp slt i32 %61, 5
  br i1 %62, label %63, label %125

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AngleDiff(i32 %67, i32 %72)
  %74 = call i32 @fabs(i32 %73)
  %75 = icmp slt i32 %74, 5
  br i1 %75, label %76, label %125

76:                                               ; preds = %63
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %81, %86
  %88 = load i64*, i64** %6, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %94, %99
  %101 = load i64*, i64** %6, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 %100, i64* %102, align 8
  %103 = load i64*, i64** %6, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  store i64 0, i64* %104, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = call float @VectorNormalize(i64* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @EA_Jump(i32 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @EA_Attack(i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i64*, i64** %6, align 8
  %119 = call i32 @EA_Move(i32 %117, i64* %118, float 8.000000e+02)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %140

125:                                              ; preds = %63, %50, %3
  %126 = load float, float* %7, align 4
  %127 = fcmp ogt float %126, 8.000000e+01
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store float 8.000000e+01, float* %7, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = load float, float* %7, align 4
  %131 = fmul float 5.000000e+00, %130
  %132 = fsub float 4.000000e+02, %131
  %133 = fsub float 4.000000e+02, %132
  store float %133, float* %8, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = load float, float* %8, align 4
  %139 = call i32 @EA_Move(i32 %136, i64* %137, float %138)
  br label %140

140:                                              ; preds = %129, %76
  %141 = load i64*, i64** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @Vector2Angles(i64* %141, i32* %143)
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @PITCH, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 90, i32* %148, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @EA_View(i32 %151, i32* %153)
  %155 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** @weapindex_rocketlauncher, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @EA_SelectWeapon(i32 %161, i32 %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @weapindex_rocketlauncher, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  store i32 %170, i32* %171, align 8
  %172 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 8
  %176 = load i64*, i64** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @VectorCopy(i64* %176, i32 %178)
  ret void
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_10__*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @EA_View(i32, i32*) #1

declare dso_local i32 @EA_SelectWeapon(i32, i32) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
