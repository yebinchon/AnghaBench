; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_mergeMetersResultToOneGroups.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_mergeMetersResultToOneGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_7__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"QInfo:%p no result in group %d, continue\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"QInfo:%p merge res data into group, index:%d, total group:%d, elapsed time:%lldms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mergeMetersResultToOneGroups(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = call i64 (...) @taosGetTimestampMs()
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %63, %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @doMergeMetersResultsToGroupRes(%struct.TYPE_9__* %47, i32* %48, %struct.TYPE_8__* %49, i32 %52, i64 %53, i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %25
  br label %77

63:                                               ; preds = %25
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @GET_QINFO_ADDR(i32* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  %76 = call i32 (i8*, i32, i64, ...) @dTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %75)
  br label %15

77:                                               ; preds = %62, %15
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @GET_QINFO_ADDR(i32* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 (...) @taosGetTimestampMs()
  %90 = load i64, i64* %5, align 8
  %91 = sub nsw i64 %89, %90
  %92 = call i32 (i8*, i32, i64, ...) @dTrace(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %83, i64 %88, i64 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  ret i64 %95
}

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i64 @doMergeMetersResultsToGroupRes(%struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dTrace(i8*, i32, i64, ...) #1

declare dso_local i32 @GET_QINFO_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
