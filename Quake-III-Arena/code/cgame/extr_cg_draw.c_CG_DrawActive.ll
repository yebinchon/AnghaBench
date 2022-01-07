; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawActive.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawActive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_9__ = type { i32 }

@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@PMF_SCOREBOARD = common dso_local global i32 0, align 4
@cg_stereoSeparation = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"CG_DrawActive: Undefined stereoView\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawActive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @CG_DrawInformation()
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @PERS_TEAM, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TEAM_SPECTATOR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PMF_SCOREBOARD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @CG_DrawTourneyScoreboard()
  br label %69

29:                                               ; preds = %19, %9
  %30 = load i32, i32* %2, align 4
  switch i32 %30, label %41 [
    i32 130, label %31
    i32 129, label %32
    i32 128, label %37
  ]

31:                                               ; preds = %29
  store float 0.000000e+00, float* %3, align 4
  br label %43

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_stereoSeparation, i32 0, i32 0), align 4
  %34 = sub nsw i32 0, %33
  %35 = sdiv i32 %34, 2
  %36 = sitofp i32 %35 to float
  store float %36, float* %3, align 4
  br label %43

37:                                               ; preds = %29
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_stereoSeparation, i32 0, i32 0), align 4
  %39 = sdiv i32 %38, 2
  %40 = sitofp i32 %39 to float
  store float %40, float* %3, align 4
  br label %43

41:                                               ; preds = %29
  store float 0.000000e+00, float* %3, align 4
  %42 = call i32 @CG_Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37, %32, %31
  %44 = call i32 (...) @CG_TileClear()
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0, i32 0), align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @VectorCopy(i32 %45, i32 %46)
  %48 = load float, float* %3, align 4
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0, i32 0), align 8
  %52 = load float, float* %3, align 4
  %53 = fneg float %52
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0, i32 1), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0, i32 0), align 8
  %58 = call i32 @VectorMA(i32 %51, float %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %43
  %60 = call i32 @trap_R_RenderScene(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0))
  %61 = load float, float* %3, align 4
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0, i32 0), align 8
  %66 = call i32 @VectorCopy(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = call i32 (...) @CG_Draw2D()
  br label %69

69:                                               ; preds = %67, %27, %7
  ret void
}

declare dso_local i32 @CG_DrawInformation(...) #1

declare dso_local i32 @CG_DrawTourneyScoreboard(...) #1

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i32 @CG_TileClear(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @trap_R_RenderScene(%struct.TYPE_8__*) #1

declare dso_local i32 @CG_Draw2D(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
