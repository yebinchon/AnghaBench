; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_parse_streaminfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_parse_streaminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i8* }
%struct.FLACStreaminfo = type { i32, i64, i32, i32, i8*, i8* }

@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@FLAC_MIN_BLOCKSIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid max blocksize: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid bps: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_parse_streaminfo(%struct.TYPE_5__* %0, %struct.FLACStreaminfo* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.FLACStreaminfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.FLACStreaminfo* %1, %struct.FLACStreaminfo** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %11 = mul nsw i32 %10, 8
  %12 = call i32 @init_get_bits(i32* %8, i32* %9, i32 %11)
  %13 = call i32 @skip_bits(i32* %8, i32 16)
  %14 = call i8* @get_bits(i32* %8, i32 16)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %17 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %19 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FLAC_MIN_BLOCKSIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* @AV_LOG_WARNING, align 4
  %26 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %27 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @av_log(%struct.TYPE_5__* %24, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %31 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %4, align 4
  br label %103

33:                                               ; preds = %3
  %34 = call i32 @skip_bits(i32* %8, i32 24)
  %35 = call i8* @get_bits_long(i32* %8, i32 24)
  %36 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %37 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = call i8* @get_bits_long(i32* %8, i32 20)
  %39 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %40 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = call i8* @get_bits(i32* %8, i32 3)
  %42 = getelementptr i8, i8* %41, i64 1
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %45 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = call i8* @get_bits(i32* %8, i32 5)
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %50 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %52 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %65

55:                                               ; preds = %33
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %59 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_log(%struct.TYPE_5__* %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %63 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %62, i32 0, i32 2
  store i32 16, i32* %63, align 8
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %4, align 4
  br label %103

65:                                               ; preds = %33
  %66 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %67 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %72 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %77 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %65
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @av_get_channel_layout_nb_channels(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85, %65
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = call i32 @ff_flac_set_channel_layout(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %94, %85
  %98 = call i32 @get_bits64(i32* %8, i32 36)
  %99 = load %struct.FLACStreaminfo*, %struct.FLACStreaminfo** %6, align 8
  %100 = getelementptr inbounds %struct.FLACStreaminfo, %struct.FLACStreaminfo* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = call i32 @skip_bits_long(i32* %8, i32 64)
  %102 = call i32 @skip_bits_long(i32* %8, i32 64)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %55, %23
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

declare dso_local i64 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i32 @ff_flac_set_channel_layout(%struct.TYPE_5__*) #1

declare dso_local i32 @get_bits64(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
