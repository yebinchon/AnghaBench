; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_AdjustPositionForMover.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_AdjustPositionForMover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ENTITYNUM_MAX_NORMAL = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_5__* null, align 8
@ET_MOVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AdjustPositionForMover(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ENTITYNUM_MAX_NORMAL, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %5
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @VectorCopy(i32 %25, i32 %26)
  br label %80

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cg_entities, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %11, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ET_MOVER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @VectorCopy(i32 %40, i32 %41)
  br label %80

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @BG_EvaluateTrajectory(i32* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @BG_EvaluateTrajectory(i32* %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @BG_EvaluateTrajectory(i32* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @BG_EvaluateTrajectory(i32* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @VectorSubtract(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @VectorSubtract(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @VectorAdd(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %43, %39, %24
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @BG_EvaluateTrajectory(i32*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
