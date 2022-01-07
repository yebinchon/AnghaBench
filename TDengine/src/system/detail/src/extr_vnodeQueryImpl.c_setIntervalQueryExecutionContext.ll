; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setIntervalQueryExecutionContext.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setIntervalQueryExecutionContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__, i32*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_26__, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setIntervalQueryExecutionContext(%struct.TYPE_23__* %0, i64 %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %7, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %8, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = call i64 @IS_MASTER_SCAN(%struct.TYPE_21__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = call i32 @setOutputBufferForIntervalQuery(%struct.TYPE_23__* %19, %struct.TYPE_24__* %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = call i32 @initCtxOutputBuf(%struct.TYPE_21__* %27)
  br label %29

29:                                               ; preds = %26, %18
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %37, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %30

40:                                               ; preds = %30
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = call i32 @setCtxOutputPointerForSupplementScan(%struct.TYPE_23__* %47, %struct.TYPE_24__* %48)
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = call i32 @setOutputBufferForIntervalQuery(%struct.TYPE_23__* %51, %struct.TYPE_24__* %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vnodeSetTagValueInParam(i32 %58, %struct.TYPE_21__* %59, i32 %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = icmp ne %struct.TYPE_25__* %70, null
  br i1 %71, label %72, label %114

72:                                               ; preds = %55
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @tsBufGetElemStartPos(%struct.TYPE_25__* %91, i32 0, i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = bitcast %struct.TYPE_26__* %97 to i8*
  %104 = bitcast %struct.TYPE_26__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 4 %104, i64 4, i1 false)
  br label %113

105:                                              ; preds = %72
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = call i32 @tsBufSetCursor(%struct.TYPE_25__* %109, %struct.TYPE_26__* %111)
  br label %113

113:                                              ; preds = %105, %78
  br label %114

114:                                              ; preds = %113, %55
  ret void
}

declare dso_local i64 @IS_MASTER_SCAN(%struct.TYPE_21__*) #1

declare dso_local i32 @setOutputBufferForIntervalQuery(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @initCtxOutputBuf(%struct.TYPE_21__*) #1

declare dso_local i32 @setCtxOutputPointerForSupplementScan(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vnodeSetTagValueInParam(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @tsBufGetElemStartPos(%struct.TYPE_25__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tsBufSetCursor(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
