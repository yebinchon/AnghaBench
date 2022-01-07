; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setFloat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__**, i32*)*, i32 (%struct.TYPE_14__**, i32, i32, i32*, float)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_AMediaFormat_setFloat(%struct.TYPE_15__* %0, i8* %1, float %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store float %2, float* %6, align 4
  store %struct.TYPE_14__** null, %struct.TYPE_14__*** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @av_assert0(i32 %11)
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = call i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_14__** %13, %struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_14__** %16, i8* %17, %struct.TYPE_15__* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_14__**, i32, i32, i32*, float)*, i32 (%struct.TYPE_14__**, i32, i32, i32*, float)** %26, align 8
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load float, float* %6, align 4
  %38 = call i32 %27(%struct.TYPE_14__** %28, i32 %31, i32 %35, i32* %36, float %37)
  %39 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = call i64 @ff_jni_exception_check(%struct.TYPE_14__** %39, i32 1, %struct.TYPE_15__* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  br label %45

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %43, %22
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_14__**, i32*)*, i32 (%struct.TYPE_14__**, i32*)** %51, align 8
  %53 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 %52(%struct.TYPE_14__** %53, i32* %54)
  br label %56

56:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_14__**, %struct.TYPE_15__*) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_14__**, i8*, %struct.TYPE_15__*) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_14__**, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
