; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getBuffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_getBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 (%struct.TYPE_18__**, i32*)*, i32 (%struct.TYPE_18__**, i32*)*, i8* (%struct.TYPE_18__**, i32*)*, i32* (%struct.TYPE_18__**, i32, i32, i32*)*, i32 (%struct.TYPE_18__**, i32, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaFormat_getBuffer(%struct.TYPE_19__* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 1, i32* %9, align 4
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @av_assert0(i32 %17)
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__** %19, %struct.TYPE_19__* %20, i32 0)
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_18__** %22, i8* %23, %struct.TYPE_19__* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %115

29:                                               ; preds = %4
  %30 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load i32 (%struct.TYPE_18__**, i32, i32, i32*)*, i32 (%struct.TYPE_18__**, i32, i32, i32*)** %32, align 8
  %34 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 %33(%struct.TYPE_18__** %34, i32 %37, i32 %41, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %47, i32 1, %struct.TYPE_19__* %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %29
  store i32 0, i32* %9, align 4
  br label %115

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load i32* (%struct.TYPE_18__**, i32, i32, i32*)*, i32* (%struct.TYPE_18__**, i32, i32, i32*)** %55, align 8
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32* %56(%struct.TYPE_18__** %57, i32 %60, i32 %64, i32* %65)
  store i32* %66, i32** %13, align 8
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = call i32 @ff_jni_exception_check(%struct.TYPE_18__** %67, i32 1, %struct.TYPE_19__* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %115

72:                                               ; preds = %52
  %73 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i8* (%struct.TYPE_18__**, i32*)*, i8* (%struct.TYPE_18__**, i32*)** %75, align 8
  %77 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i8* %76(%struct.TYPE_18__** %77, i32* %78)
  %80 = load i8**, i8*** %7, align 8
  store i8* %79, i8** %80, align 8
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64 (%struct.TYPE_18__**, i32*)*, i64 (%struct.TYPE_18__**, i32*)** %83, align 8
  %85 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i64 %84(%struct.TYPE_18__** %85, i32* %86)
  %88 = load i64*, i64** %8, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i8**, i8*** %7, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %72
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load i8**, i8*** %7, align 8
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @av_malloc(i64 %100)
  %102 = load i8**, i8*** %7, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %115

107:                                              ; preds = %96
  %108 = load i8**, i8*** %7, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64*, i64** %8, align 8
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @memcpy(i8* %109, i8* %110, i64 %112)
  br label %114

114:                                              ; preds = %107, %92, %72
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %106, %71, %51, %28
  %116 = load i32*, i32** %11, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_18__**, i32*)*, i32 (%struct.TYPE_18__**, i32*)** %121, align 8
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 %122(%struct.TYPE_18__** %123, i32* %124)
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32*, i32** %13, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i32 (%struct.TYPE_18__**, i32*)*, i32 (%struct.TYPE_18__**, i32*)** %132, align 8
  %134 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 %133(%struct.TYPE_18__** %134, i32* %135)
  br label %137

137:                                              ; preds = %129, %126
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_18__**, %struct.TYPE_19__*, i32) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_18__**, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_18__**, i32, %struct.TYPE_19__*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
