; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_GetFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_GetFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@aasworld = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@max_aas = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"AAS_MAX_FACES = %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"AAS_MAX_EDGEINDEXSIZE = %d\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"AAS_GetFace: face %d had degenerate edge %d-%d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"AAS_GetFace: face %d was tiny\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_GetFace(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_aas, i32 0, i32 0), align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_aas, i32 0, i32 0), align 4
  %23 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 3), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %27
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %13, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  %37 = call i32 @AAS_GetPlane(i32 %31, i32 %34, i32* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %108, %24
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_aas, i32 0, i32 1), align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_aas, i32 0, i32 1), align 4
  %61 = call i32 @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = srem i32 %64, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AAS_GetEdge(i32 %75, i32 %82, i32* %10)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %62
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %107

97:                                               ; preds = %62
  %98 = load i64, i64* @verbose, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 (i8*, i64, ...) @Log_Write(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %97
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %49

111:                                              ; preds = %49
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 3), align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = call i32 @memset(%struct.TYPE_11__* %120, i32 0, i32 40)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %123 = sext i32 %122 to i64
  %124 = call i32 (i8*, i64, ...) @Log_Write(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %123)
  store i32 0, i32* %5, align 4
  br label %130

125:                                              ; preds = %111
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %127 = load i32*, i32** %9, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  store i32 1, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %116
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @AAS_GetPlane(i32, i32, i32*) #1

declare dso_local i32 @AAS_GetEdge(i32, i32, i32*) #1

declare dso_local i32 @Log_Write(i8*, i64, ...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
