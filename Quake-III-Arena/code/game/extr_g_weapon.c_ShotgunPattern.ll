; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_ShotgunPattern.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_ShotgunPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@qfalse = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@DEFAULT_SHOTGUN_COUNT = common dso_local global i32 0, align 4
@DEFAULT_SHOTGUN_SPREAD = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShotgunPattern(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %18 = load i64, i64* @qfalse, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @VectorNormalize2(i32 %19, i32 %20)
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @PerpendicularVector(i32 %22, i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @CrossProduct(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PERS_SCORE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %84, %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DEFAULT_SHOTGUN_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = call i32 @Q_crandom(i32* %7)
  %44 = load i32, i32* @DEFAULT_SHOTGUN_SPREAD, align 4
  %45 = mul nsw i32 %43, %44
  %46 = mul nsw i32 %45, 16
  %47 = sitofp i32 %46 to float
  store float %47, float* %10, align 4
  %48 = call i32 @Q_crandom(i32* %7)
  %49 = load i32, i32* @DEFAULT_SHOTGUN_SPREAD, align 4
  %50 = mul nsw i32 %48, %49
  %51 = mul nsw i32 %50, 16
  %52 = sitofp i32 %51 to float
  store float %52, float* %11, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @VectorMA(i32 %53, float 1.310720e+05, i32 %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = load float, float* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @VectorMA(i32 %57, float %58, i32 %59, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = load float, float* %11, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @VectorMA(i32 %62, float %63, i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = call i64 @ShotgunPellet(i32 %67, i32 %68, %struct.TYPE_8__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %42
  %73 = load i64, i64* %17, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @qtrue, align 8
  store i64 %76, i64* %17, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %75, %72, %42
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %38

87:                                               ; preds = %38
  ret void
}

declare dso_local i32 @VectorNormalize2(i32, i32) #1

declare dso_local i32 @PerpendicularVector(i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @Q_crandom(i32*) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i64 @ShotgunPellet(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
