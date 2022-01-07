; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_loadRequiredBlockIntoMem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_loadRequiredBlockIntoMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32* }

@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"QInfo:%p failed to get data file:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loadRequiredBlockIntoMem(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 -1, i32* %6, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %80

38:                                               ; preds = %2
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %9, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %44 = icmp eq %struct.TYPE_22__* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %45, %38
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %58 = call i32 @setQueryStatus(%struct.TYPE_19__* %56, i32 %57)
  store i32 -1, i32* %3, align 4
  br label %116

59:                                               ; preds = %50
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @getCacheDataBlock(%struct.TYPE_21__* %60, %struct.TYPE_19__* %61, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @getTimestampInCacheBlock(i32* %69, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @SET_CACHE_BLOCK_FLAG(i32 %78)
  br label %114

80:                                               ; preds = %2
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @vnodeGetVnodeHeaderFileIdx(i32* %82, %struct.TYPE_18__* %83, i32 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = call i32 @GET_QINFO_ADDR(%struct.TYPE_19__* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  store i32 -1, i32* %99, align 4
  store i32 -1, i32* %3, align 4
  br label %116

100:                                              ; preds = %80
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @vnodeGetCompBlockInfo(%struct.TYPE_21__* %101, %struct.TYPE_18__* %102, i64 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp sgt i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @getTimestampInDiskBlock(%struct.TYPE_18__* %109, i32 %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %100, %75
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %91, %55
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @setQueryStatus(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @getCacheDataBlock(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @getTimestampInCacheBlock(i32*, i32) #1

declare dso_local i32 @SET_CACHE_BLOCK_FLAG(i32) #1

declare dso_local i64 @vnodeGetVnodeHeaderFileIdx(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @dError(i8*, i32, i32) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_19__*) #1

declare dso_local i64 @vnodeGetCompBlockInfo(%struct.TYPE_21__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getTimestampInDiskBlock(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
