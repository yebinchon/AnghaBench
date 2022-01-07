; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getFloat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { float (%struct.TYPE_15__**, i32, i32, i32*)*, i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaFormat_getFloat(%struct.TYPE_16__* %0, i8* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store float* %2, float** %6, align 8
  store i32 1, i32* %7, align 4
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @av_assert0(i32 %13)
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_15__** %15, %struct.TYPE_16__* %16, i32 0)
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_15__** %18, i8* %19, %struct.TYPE_16__* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32 (%struct.TYPE_15__**, i32, i32, i32*)*, i32 (%struct.TYPE_15__**, i32, i32, i32*)** %28, align 8
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 %29(%struct.TYPE_15__** %30, i32 %33, i32 %37, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = call i32 @ff_jni_exception_check(%struct.TYPE_15__** %43, i32 1, %struct.TYPE_16__* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %25
  store i32 0, i32* %7, align 4
  br label %70

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load float (%struct.TYPE_15__**, i32, i32, i32*)*, float (%struct.TYPE_15__**, i32, i32, i32*)** %51, align 8
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call float %52(%struct.TYPE_15__** %53, i32 %56, i32 %60, i32* %61)
  %63 = load float*, float** %6, align 8
  store float %62, float* %63, align 4
  %64 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = call i32 @ff_jni_exception_check(%struct.TYPE_15__** %64, i32 1, %struct.TYPE_16__* %65)
  store i32 %66, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %70

69:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %68, %47, %24
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*)** %76, align 8
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 %77(%struct.TYPE_15__** %78, i32* %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_15__**, i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_15__**, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
