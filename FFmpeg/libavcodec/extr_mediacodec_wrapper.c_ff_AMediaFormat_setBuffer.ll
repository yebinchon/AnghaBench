; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setBuffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__**, i32*)*, i32 (%struct.TYPE_16__**, i32, i32, i32*, i32*)*, i32* (%struct.TYPE_16__**, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_AMediaFormat_setBuffer(%struct.TYPE_17__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @av_assert0(i32 %15)
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = call i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_16__** %17, %struct.TYPE_17__* %18)
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_16__** %20, i8* %21, %struct.TYPE_17__* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %78

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27
  br label %78

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @av_malloc(i64 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %78

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i32* (%struct.TYPE_16__**, i8*, i64)*, i32* (%struct.TYPE_16__**, i8*, i64)** %47, align 8
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32* %48(%struct.TYPE_16__** %49, i8* %50, i64 %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  br label %78

56:                                               ; preds = %40
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_16__**, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_16__**, i32, i32, i32*, i32*)** %59, align 8
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 %60(%struct.TYPE_16__** %61, i32 %64, i32 %68, i32* %69, i32* %70)
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = call i64 @ff_jni_exception_check(%struct.TYPE_16__** %72, i32 1, %struct.TYPE_17__* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %56
  br label %78

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %76, %55, %39, %33, %26
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_16__**, i32*)*, i32 (%struct.TYPE_16__**, i32*)** %84, align 8
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 %85(%struct.TYPE_16__** %86, i32* %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_16__**, i32*)*, i32 (%struct.TYPE_16__**, i32*)** %95, align 8
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 %96(%struct.TYPE_16__** %97, i32* %98)
  br label %100

100:                                              ; preds = %92, %89
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_16__**, %struct.TYPE_17__*) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_16__**, i8*, %struct.TYPE_17__*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_16__**, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
