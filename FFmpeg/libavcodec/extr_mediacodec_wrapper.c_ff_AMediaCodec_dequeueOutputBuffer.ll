; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_dequeueOutputBuffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_dequeueOutputBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__**, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaCodec_dequeueOutputBuffer(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__**, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_17__** null, %struct.TYPE_17__*** %9, align 8
  %10 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %13 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_17__** %10, %struct.TYPE_19__* %11, i32 %12)
  %14 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_17__**, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32, i32, i32)** %16, align 8
  %18 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %17(%struct.TYPE_17__** %18, i32 %21, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = call i64 @ff_jni_exception_check(%struct.TYPE_17__** %31, i32 1, %struct.TYPE_19__* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %36, i32* %4, align 4
  br label %127

37:                                               ; preds = %3
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %41(%struct.TYPE_17__** %42, i32 %45, i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = call i64 @ff_jni_exception_check(%struct.TYPE_17__** %53, i32 1, %struct.TYPE_19__* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %58, i32* %4, align 4
  br label %127

59:                                               ; preds = %37
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %63(%struct.TYPE_17__** %64, i32 %67, i32 %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = call i64 @ff_jni_exception_check(%struct.TYPE_17__** %75, i32 1, %struct.TYPE_19__* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %80, i32* %4, align 4
  br label %127

81:                                               ; preds = %59
  %82 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)** %84, align 8
  %86 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %85(%struct.TYPE_17__** %86, i32 %89, i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = call i64 @ff_jni_exception_check(%struct.TYPE_17__** %97, i32 1, %struct.TYPE_19__* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %81
  %102 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %102, i32* %4, align 4
  br label %127

103:                                              ; preds = %81
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)** %106, align 8
  %108 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 %107(%struct.TYPE_17__** %108, i32 %111, i32 %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = call i64 @ff_jni_exception_check(%struct.TYPE_17__** %119, i32 1, %struct.TYPE_19__* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %103
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %123, %101, %79, %57, %35
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_17__**, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_17__**, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
