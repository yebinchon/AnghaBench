; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_try_decode_video_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_try_decode_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to open codec\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to allocate frame\0A\00", align 1
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @try_decode_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_decode_video_frame(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @avcodec_is_open(%struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @avcodec_find_decoder(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @avcodec_open2(%struct.TYPE_11__* %23, i32* %24, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 @av_log(%struct.TYPE_11__* %29, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %99

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %3
  %34 = call i32* (...) @av_frame_alloc()
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(%struct.TYPE_11__* null, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %99

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @avpriv_codec_get_cap_skip_frame_fill_param(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @AVDISCARD_ALL, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %43, %40
  br label %54

54:                                               ; preds = %93, %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = call i32 @avcodec_decode_video2(%struct.TYPE_11__* %55, i32* %56, i32* %8, %struct.TYPE_10__* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %68, %54
  %71 = phi i1 [ true, %54 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @av_assert0(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %98

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %98

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %54, label %98

98:                                               ; preds = %93, %91, %76
  br label %99

99:                                               ; preds = %98, %37, %28
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = call i32 @av_frame_free(i32** %9)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @avcodec_is_open(%struct.TYPE_11__*) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @avpriv_codec_get_cap_skip_frame_fill_param(i32) #1

declare dso_local i32 @avcodec_decode_video2(%struct.TYPE_11__*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
