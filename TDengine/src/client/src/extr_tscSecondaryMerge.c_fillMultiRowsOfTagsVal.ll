; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_fillMultiRowsOfTagsVal.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_fillMultiRowsOfTagsVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64, %struct.TYPE_14__*)* @fillMultiRowsOfTagsVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillMultiRowsOfTagsVal(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %43, %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.TYPE_11__* @tscSqlExprGet(%struct.TYPE_12__* %24, i64 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %32, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load i64, i64* %7, align 8
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %113, %46
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.TYPE_11__* @tscSqlExprGet(%struct.TYPE_12__* %61, i64 %62)
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %12, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %113

70:                                               ; preds = %60
  %71 = load i64, i64* %5, align 8
  %72 = sub nsw i64 %71, 1
  store i64 %72, i64* %13, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @memset(i8* %73, i32 0, i64 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %79
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %14, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy(i8* %81, i8* %84, i64 %87)
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %109, %70
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %96
  store i8* %100, i8** %98, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memcpy(i8* %103, i8* %104, i64 %107)
  br label %109

109:                                              ; preds = %93
  %110 = load i64, i64* %15, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %89

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %69
  %114 = load i64, i64* %11, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %53

116:                                              ; preds = %53
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  ret void
}

declare dso_local %struct.TYPE_11__* @tscSqlExprGet(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
