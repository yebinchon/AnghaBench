; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_StartPlacementExecutionOnSession.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_StartPlacementExecutionOnSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_24__*, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@PLACEMENT_EXECUTION_RUNNING = common dso_local global i32 0, align 4
@MULTI_CONNECTION_LOST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)* @StartPlacementExecutionOnSession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartPlacementExecutionOnSession(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %7, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %8, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %9, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %10, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %11, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %12, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32* @PlacementAccessListForTask(%struct.TYPE_21__* %41, i32* %42)
  store i32* %43, i32** %13, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = call i32 @AssignPlacementListToConnection(i32* %47, %struct.TYPE_24__* %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %2
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %70, align 8
  %71 = load i32, i32* @PLACEMENT_EXECUTION_RUNNING, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %75 = icmp ne %struct.TYPE_23__* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %63
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i8** null, i8*** %19, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = call %struct.TYPE_23__* @copyParamList(%struct.TYPE_23__* %80)
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %8, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = call i32 @ExtractParametersForRemoteExecution(%struct.TYPE_23__* %82, i32** %18, i8*** %19)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32*, i32** %18, align 8
  %88 = load i8**, i8*** %19, align 8
  %89 = call i32 @SendRemoteCommandParams(%struct.TYPE_24__* %84, i8* %85, i32 %86, i32* %87, i8** %88)
  store i32 %89, i32* %15, align 4
  br label %94

90:                                               ; preds = %63
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @SendRemoteCommand(%struct.TYPE_24__* %91, i8* %92)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %90, %76
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** @MULTI_CONNECTION_LOST, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %3, align 4
  br label %113

101:                                              ; preds = %94
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PQsetSingleRowMode(i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i8*, i8** @MULTI_CONNECTION_LOST, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  store i32 0, i32* %3, align 4
  br label %113

112:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %108, %97
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @PlacementAccessListForTask(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AssignPlacementListToConnection(i32*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @copyParamList(%struct.TYPE_23__*) #1

declare dso_local i32 @ExtractParametersForRemoteExecution(%struct.TYPE_23__*, i32**, i8***) #1

declare dso_local i32 @SendRemoteCommandParams(%struct.TYPE_24__*, i8*, i32, i32*, i8**) #1

declare dso_local i32 @SendRemoteCommand(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @PQsetSingleRowMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
