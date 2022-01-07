; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_iccp_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_iccp_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"iCCP with invalid name!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"iCCP with invalid compression!\0A\00", align 1
@AV_FRAME_DATA_ICC_PROFILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32*)* @decode_iccp_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_iccp_chunk(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca [82 x i64], align 16
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %28, %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call i64 @bytestream2_get_byte(%struct.TYPE_13__* %16)
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [82 x i64], [82 x i64]* %11, i64 0, i64 %20
  store i64 %17, i64* %21, align 8
  %22 = icmp ne i64 %17, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 81
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i1 [ false, %14 ], [ %25, %23 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %14

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 80
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(i32 %35, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @FFMAX(i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i64 @bytestream2_get_byte(%struct.TYPE_13__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(i32 %51, i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %4, align 4
  br label %113

55:                                               ; preds = %39
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @FFMAX(i32 %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i32 @decode_zbuf(%struct.TYPE_12__* %12, i64 %62, i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %113

74:                                               ; preds = %55
  %75 = bitcast i64** %10 to i8**
  %76 = call i32 @av_bprint_finalize(%struct.TYPE_12__* %12, i8** %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %113

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @AV_FRAME_DATA_ICC_PROFILE, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.TYPE_11__* @av_frame_new_side_data(i32* %82, i32 %83, i32 %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %13, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load i64*, i64** %10, align 8
  %91 = call i32 @av_free(i64* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %113

94:                                               ; preds = %81
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds [82 x i64], [82 x i64]* %11, i64 0, i64 0
  %98 = call i32 @av_dict_set(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %97, i32 0)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64*, i64** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i32 %101, i64* %102, i32 %104)
  %106 = load i64*, i64** %10, align 8
  %107 = call i32 @av_free(i64* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 4
  %112 = call i32 @bytestream2_skip(%struct.TYPE_13__* %109, i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %94, %89, %79, %72, %48, %32
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @bytestream2_get_byte(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @decode_zbuf(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_12__*, i8**) #1

declare dso_local %struct.TYPE_11__* @av_frame_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @av_free(i64*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
