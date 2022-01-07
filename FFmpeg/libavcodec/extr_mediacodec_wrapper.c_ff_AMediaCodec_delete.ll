; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_delete.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, i32*, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*, i32)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@jni_amediacodec_mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaCodec_delete(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__**, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %5, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = icmp ne %struct.TYPE_16__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

9:                                                ; preds = %1
  %10 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %13 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_15__** %10, %struct.TYPE_16__* %11, i32 %12)
  %14 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_15__**, i32*, i32)*, i32 (%struct.TYPE_15__**, i32*, i32)** %16, align 8
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %17(%struct.TYPE_15__** %18, i32* %21, i32 %25)
  %27 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i64 @ff_jni_exception_check(%struct.TYPE_15__** %27, i32 1, %struct.TYPE_16__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %9
  %34 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*)** %36, align 8
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %37(%struct.TYPE_15__** %38, i32* %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*)** %47, align 8
  %49 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 %48(%struct.TYPE_15__** %49, i32* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* @jni_amediacodec_mapping, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i32 @ff_jni_reset_jfields(%struct.TYPE_15__** %56, %struct.TYPE_17__* %58, i32 %59, i32 1, %struct.TYPE_16__* %60)
  %62 = call i32 @av_freep(%struct.TYPE_16__** %3)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %33, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_15__**, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_15__**, %struct.TYPE_17__*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
