; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_FreeOldestCache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_FreeOldestCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__**, %struct.TYPE_8__***, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__* }

@aasworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CACHETYPE_AREA = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_FreeOldestCache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 3), align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %3, align 8
  br label %5

5:                                                ; preds = %25, %0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CACHETYPE_AREA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %25

24:                                               ; preds = %14, %8
  br label %29

25:                                               ; preds = %23
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %3, align 8
  br label %5

29:                                               ; preds = %24, %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %125

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CACHETYPE_AREA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @AAS_ClusterAreaNum(i64 %41, i64 %44)
  store i32 %45, i32* %2, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %57, align 8
  br label %71

58:                                               ; preds = %38
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 1), align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %62, i64 %65
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 %69
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %58, %50
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  br label %121

85:                                               ; preds = %32
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %97, align 8
  br label %107

98:                                               ; preds = %85
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %102, i64 %105
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %106, align 8
  br label %107

107:                                              ; preds = %98, %90
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = icmp ne %struct.TYPE_8__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %119, align 8
  br label %120

120:                                              ; preds = %112, %107
  br label %121

121:                                              ; preds = %120, %84
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = call i32 @AAS_FreeRoutingCache(%struct.TYPE_10__* %122)
  %124 = load i32, i32* @qtrue, align 4
  store i32 %124, i32* %1, align 4
  br label %127

125:                                              ; preds = %29
  %126 = load i32, i32* @qfalse, align 4
  store i32 %126, i32* %1, align 4
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @AAS_ClusterAreaNum(i64, i64) #1

declare dso_local i32 @AAS_FreeRoutingCache(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
