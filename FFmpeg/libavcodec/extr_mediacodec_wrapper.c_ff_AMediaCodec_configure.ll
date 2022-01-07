; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_configure.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i32, i32, i32, i8*, i32*, i32)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaCodec_configure(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %12, align 8
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %16 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__** %13, %struct.TYPE_15__* %14, i32 %15)
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_13__**, i32, i32, i32, i8*, i32*, i32)*, i32 (%struct.TYPE_13__**, i32, i32, i32, i8*, i32*, i32)** %19, align 8
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 %20(%struct.TYPE_13__** %21, i32 %24, i32 %28, i32 %31, i8* %32, i32* null, i32 %33)
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = call i64 @ff_jni_exception_check(%struct.TYPE_13__** %35, i32 1, %struct.TYPE_15__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %40, i32* %11, align 4
  br label %42

41:                                               ; preds = %5
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__**, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_13__**, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
