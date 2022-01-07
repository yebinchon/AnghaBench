; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getString.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__**, i32*)*, i32* (%struct.TYPE_18__**, i32, i32, i32*)*, i32 (%struct.TYPE_18__**, i32, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaFormat_getString(%struct.TYPE_19__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 1, i32* %7, align 4
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @av_assert0(i32 %14)
  %16 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__** %16, %struct.TYPE_19__* %17, i32 0)
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_18__** %19, i8* %20, %struct.TYPE_19__* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %80

26:                                               ; preds = %3
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load i32 (%struct.TYPE_18__**, i32, i32, i32*)*, i32 (%struct.TYPE_18__**, i32, i32, i32*)** %29, align 8
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 %30(%struct.TYPE_18__** %31, i32 %34, i32 %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %44, i32 1, %struct.TYPE_19__* %45)
  store i32 %46, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %26
  store i32 0, i32* %7, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32* (%struct.TYPE_18__**, i32, i32, i32*)*, i32* (%struct.TYPE_18__**, i32, i32, i32*)** %52, align 8
  %54 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* %53(%struct.TYPE_18__** %54, i32 %57, i32 %61, i32* %62)
  store i32* %63, i32** %11, align 8
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %64, i32 1, %struct.TYPE_19__* %65)
  store i32 %66, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %80

69:                                               ; preds = %49
  %70 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = call i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_18__** %70, i32* %71, %struct.TYPE_19__* %72)
  %74 = load i8**, i8*** %6, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %80

79:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %78, %68, %48, %25
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_18__**, i32*)*, i32 (%struct.TYPE_18__**, i32*)** %86, align 8
  %88 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 %87(%struct.TYPE_18__** %88, i32* %89)
  br label %91

91:                                               ; preds = %83, %80
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_18__**, i32*)*, i32 (%struct.TYPE_18__**, i32*)** %97, align 8
  %99 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 %98(%struct.TYPE_18__** %99, i32* %100)
  br label %102

102:                                              ; preds = %94, %91
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__**, %struct.TYPE_19__*, i32) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_18__**, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_18__**, i32, %struct.TYPE_19__*) #1

declare dso_local i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_18__**, i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
