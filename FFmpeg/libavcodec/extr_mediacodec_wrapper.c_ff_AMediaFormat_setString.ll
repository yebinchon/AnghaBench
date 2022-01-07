; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setString.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_setString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32, i32, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_AMediaFormat_setString(%struct.TYPE_16__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = icmp ne %struct.TYPE_16__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @av_assert0(i32 %12)
  %14 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = call i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_15__** %14, %struct.TYPE_16__* %15)
  %17 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_15__** %17, i8* %18, %struct.TYPE_16__* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_15__** %25, i8* %26, %struct.TYPE_16__* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %54

32:                                               ; preds = %24
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_15__**, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_15__**, i32, i32, i32*, i32*)** %35, align 8
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 %36(%struct.TYPE_15__** %37, i32 %40, i32 %44, i32* %45, i32* %46)
  %48 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = call i64 @ff_jni_exception_check(%struct.TYPE_15__** %48, i32 1, %struct.TYPE_16__* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %54

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %52, %31, %23
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*)** %60, align 8
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 %61(%struct.TYPE_15__** %62, i32* %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_15__**, i32*)*, i32 (%struct.TYPE_15__**, i32*)** %71, align 8
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 %72(%struct.TYPE_15__** %73, i32* %74)
  br label %76

76:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @JNI_GET_ENV_OR_RETURN_VOID(%struct.TYPE_15__**, %struct.TYPE_16__*) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_15__**, i8*, %struct.TYPE_16__*) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_15__**, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
