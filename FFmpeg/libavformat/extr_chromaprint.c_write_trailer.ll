; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_chromaprint.c_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_chromaprint.c_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to generate fingerprint\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to retrieve fingerprint\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to encode fingerprint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_trailer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @chromaprint_finish(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 @av_log(%struct.TYPE_7__* %24, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %70

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @chromaprint_get_raw_fingerprint(i32 %30, i8** %5, i32* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(%struct.TYPE_7__* %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %70

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %69 [
    i32 128, label %41
    i32 129, label %47
    i32 130, label %47
  ]

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 4
  %46 = call i32 @avio_write(i32* %42, i8* %43, i32 %45)
  br label %69

47:                                               ; preds = %37, %37
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 130
  %57 = zext i1 %56 to i32
  %58 = call i32 @chromaprint_encode_fingerprint(i8* %48, i32 %49, i32 %52, i8** %6, i32* %8, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 @av_log(%struct.TYPE_7__* %61, i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %70

64:                                               ; preds = %47
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @avio_write(i32* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %37, %64, %41
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %60, %33, %23
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @chromaprint_dealloc(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @chromaprint_dealloc(i8* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = call i32 @cleanup(%struct.TYPE_6__* %83)
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @chromaprint_finish(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @chromaprint_get_raw_fingerprint(i32, i8**, i32*) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @chromaprint_encode_fingerprint(i8*, i32, i32, i8**, i32*, i32) #1

declare dso_local i32 @chromaprint_dealloc(i8*) #1

declare dso_local i32 @cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
