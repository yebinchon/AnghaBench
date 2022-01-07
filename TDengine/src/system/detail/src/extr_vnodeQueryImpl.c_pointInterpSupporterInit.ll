; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_pointInterpSupporterInit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_pointInterpSupporterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i8**, i8** }

@POINTER_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointInterpSupporterInit(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i64 @isPointInterpoQuery(%struct.TYPE_11__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %108

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @POINTER_BYTES, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i8* @malloc(i32 %20)
  %22 = bitcast i8* %21 to i8**
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i8** %22, i8*** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @POINTER_BYTES, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to i8**
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i8** %31, i8*** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %57, %15
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = call i32 @PRIMARY_TSCOL_LOADED(%struct.TYPE_11__* %61)
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* %5, align 8
  %65 = call i8* @calloc(i32 1, i64 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i8* @calloc(i32 1, i64 %66)
  store i8* %67, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %102, %60
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr i8, i8* %76, i64 %77
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr i8, i8* %84, i64 %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %86, i8** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %75
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %11, align 8
  br label %68

107:                                              ; preds = %68
  br label %108

108:                                              ; preds = %107, %2
  ret void
}

declare dso_local i64 @isPointInterpoQuery(%struct.TYPE_11__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PRIMARY_TSCOL_LOADED(%struct.TYPE_11__*) #1

declare dso_local i8* @calloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
