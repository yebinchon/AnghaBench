; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_BeginModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_BeginModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@nummodels = common dso_local global i64 0, align 8
@MAX_MAP_MODELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MAX_MAP_MODELS\00", align 1
@dmodels = common dso_local global %struct.TYPE_14__* null, align 8
@entities = common dso_local global %struct.TYPE_13__* null, align 8
@entity_num = common dso_local global i64 0, align 8
@numDrawSurfaces = common dso_local global i32 0, align 4
@numbrushes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginModel() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = load i64, i64* @nummodels, align 8
  %9 = load i64, i64* @MAX_MAP_MODELS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dmodels, align 8
  %15 = load i64, i64* @nummodels, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i64 %15
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %1, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @entities, align 8
  %18 = load i64, i64* @entity_num, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 %18
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ClearBounds(i32 %20, i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %2, align 8
  br label %26

26:                                               ; preds = %48, %13
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @AddPointToBounds(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @AddPointToBounds(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %34
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %2, align 8
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %6, align 8
  br label %56

56:                                               ; preds = %89, %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %65, %69
  %71 = icmp slt i32 %61, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %60
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @AddPointToBounds(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %60

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %6, align 8
  br label %56

93:                                               ; preds = %56
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VectorCopy(i32 %94, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VectorCopy(i32 %99, i32 %102)
  %104 = load i32, i32* @numDrawSurfaces, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @numbrushes, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = call i32 @EmitBrushes(%struct.TYPE_15__* %112)
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @EmitBrushes(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
