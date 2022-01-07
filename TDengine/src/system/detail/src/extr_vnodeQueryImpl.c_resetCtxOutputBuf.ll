; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_resetCtxOutputBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_resetCtxOutputBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__*, i32*, %struct.TYPE_12__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i64, i64, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@TSDB_FUNC_DIFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resetCtxOutputBuf(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %125, %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %128

22:                                               ; preds = %16
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i64 %26
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %6, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_17__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = call i64 @isTSCompQuery(%struct.TYPE_17__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31, %22
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %38, i64 %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %64

46:                                               ; preds = %31
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %49, i64 %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 %55, 1
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = add i64 %54, %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %46, %35
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @resetResultInfo(i32* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %64
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @TSDB_FUNC_DIFF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93, %89, %64
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %97, %93
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %109, i64 %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = mul i64 %121, %122
  %124 = call i32 @memset(i64 %114, i32 0, i64 %123)
  br label %125

125:                                              ; preds = %106
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %16

128:                                              ; preds = %16
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %130 = call i32 @initCtxOutputBuf(%struct.TYPE_16__* %129)
  ret void
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_17__*) #1

declare dso_local i64 @isTSCompQuery(%struct.TYPE_17__*) #1

declare dso_local i32 @resetResultInfo(i32*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @initCtxOutputBuf(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
