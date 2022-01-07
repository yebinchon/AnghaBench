; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_BFGJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_BFGJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64*, i32* }
%struct.TYPE_11__ = type { i64*, i64* }

@PITCH = common dso_local global i64 0, align 8
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@weapindex_bfg10k = common dso_local global %struct.TYPE_12__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_BFGJump(%struct.TYPE_10__* noalias sret %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2) #0 {
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
  %40 = load float, float* %7, align 4
  %41 = fcmp olt float %40, 5.000000e+00
  br i1 %41, label %42, label %117

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AngleDiff(i32 %46, i32 %51)
  %53 = call i32 @fabs(i32 %52)
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %117

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @AngleDiff(i32 %59, i32 %64)
  %66 = call i32 @fabs(i32 %65)
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %117

68:                                               ; preds = %55
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %86, %91
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 2
  store i64 0, i64* %96, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = call float @VectorNormalize(i64* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @EA_Jump(i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @EA_Attack(i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = call i32 @EA_Move(i32 %109, i64* %110, float 8.000000e+02)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %132

117:                                              ; preds = %55, %42, %3
  %118 = load float, float* %7, align 4
  %119 = fcmp ogt float %118, 8.000000e+01
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store float 8.000000e+01, float* %7, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load float, float* %7, align 4
  %123 = fmul float 5.000000e+00, %122
  %124 = fsub float 4.000000e+02, %123
  %125 = fsub float 4.000000e+02, %124
  store float %125, float* %8, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64*, i64** %6, align 8
  %130 = load float, float* %8, align 4
  %131 = call i32 @EA_Move(i32 %128, i64* %129, float %130)
  br label %132

132:                                              ; preds = %121, %68
  %133 = load i64*, i64** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @Vector2Angles(i64* %133, i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @PITCH, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 90, i32* %140, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @EA_View(i32 %143, i32* %145)
  %147 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @weapindex_bfg10k, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @EA_SelectWeapon(i32 %153, i32 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @weapindex_bfg10k, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  store i32 %162, i32* %163, align 8
  %164 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %164
  store i32 %167, i32* %165, align 8
  %168 = load i64*, i64** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @VectorCopy(i64* %168, i32 %170)
  ret void
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_10__*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

declare dso_local i32 @EA_View(i32, i32*) #1

declare dso_local i32 @EA_SelectWeapon(i32, i32) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
