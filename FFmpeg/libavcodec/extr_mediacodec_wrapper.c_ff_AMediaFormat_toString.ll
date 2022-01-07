; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_toString.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i32*)*, i32* (%struct.TYPE_13__**, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_AMediaFormat_toString(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i8* null, i8** %3, align 8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = icmp ne %struct.TYPE_14__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @av_assert0(i32 %8)
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__** %10, %struct.TYPE_14__* %11, i32* null)
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32* (%struct.TYPE_13__**, i32, i32)*, i32* (%struct.TYPE_13__**, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* %16(%struct.TYPE_13__** %17, i32 %20, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %27 = call i64 @ff_jni_exception_check(%struct.TYPE_13__** %26, i32 1, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = call i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_13__** %31, i32* %32, %struct.TYPE_14__* %33)
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_13__**, i32*)*, i32 (%struct.TYPE_13__**, i32*)** %41, align 8
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 %42(%struct.TYPE_13__** %43, i32* %44)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_13__**, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_13__**, i32, i32*) #1

declare dso_local i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_13__**, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
