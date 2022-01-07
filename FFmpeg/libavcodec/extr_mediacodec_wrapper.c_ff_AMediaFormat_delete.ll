; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_delete.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__**, i32*)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@jni_amediaformat_mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaFormat_delete(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %13 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_10__** %10, %struct.TYPE_11__* %11, i32 %12)
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_10__**, i32*)*, i32 (%struct.TYPE_10__**, i32*)** %16, align 8
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 %17(%struct.TYPE_10__** %18, i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* @jni_amediaformat_mapping, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @ff_jni_reset_jfields(%struct.TYPE_10__** %25, i32* %27, i32 %28, i32 1, %struct.TYPE_11__* %29)
  %31 = call i32 @av_freep(%struct.TYPE_11__** %3)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %9, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_10__**, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_10__**, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
