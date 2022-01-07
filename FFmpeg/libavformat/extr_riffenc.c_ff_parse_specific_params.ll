; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_parse_specific_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_parse_specific_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_parse_specific_params(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = call i32 @av_get_audio_frame_duration2(%struct.TYPE_8__* %15, i32 0)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %102

42:                                               ; preds = %30, %23
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54, %48, %42
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %101

71:                                               ; preds = %54
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 8
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 8, %81 ]
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  br label %98

93:                                               ; preds = %82
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 8, %96
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i32 [ %92, %89 ], [ %97, %93 ]
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %60
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @av_gcd(i32 %104, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, %112
  store i32 %115, i32* %113, align 4
  ret void
}

declare dso_local i32 @av_get_audio_frame_duration2(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
