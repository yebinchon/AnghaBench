; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_AddPacketEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_AddPacketEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, i32, i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_14__, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddPacketEntities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 9), align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 9), align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  br label %28

18:                                               ; preds = %7
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = sitofp i32 %23 to float
  %25 = load i32, i32* %4, align 4
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %24, %26
  store float %27, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %18, %17
  br label %30

29:                                               ; preds = %0
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 4
  %34 = and i32 %33, 2047
  %35 = mul nsw i32 %34, 360
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 2.048000e+03
  %38 = fptosi double %37 to i32
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 4
  %46 = and i32 %45, 1023
  %47 = mul nsw i32 %46, 360
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 1.024000e+03
  %50 = fptosi float %49 to i32
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 8), align 4
  %57 = call i32 @AnglesToAxis(i32* %55, i32 %56)
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 7), align 8
  %60 = call i32 @AnglesToAxis(i32* %58, i32 %59)
  store i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 6), i32** %3, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @qfalse, align 4
  %63 = call i32 @BG_PlayerStateToEntityState(i32* %61, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 5, i32 0), i32 %62)
  %64 = call i32 @CG_AddCEntity(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 5))
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %69
  %71 = call i32 @CG_CalcEntityLerpPositions(%struct.TYPE_14__* %70)
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %91, %30
  %73 = load i32, i32* %1, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %87
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %2, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = call i32 @CG_AddCEntity(%struct.TYPE_14__* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %72

94:                                               ; preds = %72
  ret void
}

declare dso_local i32 @AnglesToAxis(i32*, i32) #1

declare dso_local i32 @BG_PlayerStateToEntityState(i32*, i32*, i32) #1

declare dso_local i32 @CG_AddCEntity(%struct.TYPE_14__*) #1

declare dso_local i32 @CG_CalcEntityLerpPositions(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
