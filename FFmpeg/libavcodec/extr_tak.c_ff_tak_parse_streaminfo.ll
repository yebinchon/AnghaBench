; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_ff_tak_parse_streaminfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_ff_tak_parse_streaminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, i8*, i32, i8* }

@TAK_ENCODER_CODEC_BITS = common dso_local global i32 0, align 4
@TAK_ENCODER_PROFILE_BITS = common dso_local global i32 0, align 4
@TAK_SIZE_FRAME_DURATION_BITS = common dso_local global i32 0, align 4
@TAK_SIZE_SAMPLES_NUM_BITS = common dso_local global i32 0, align 4
@TAK_FORMAT_DATA_TYPE_BITS = common dso_local global i32 0, align 4
@TAK_FORMAT_SAMPLE_RATE_BITS = common dso_local global i32 0, align 4
@TAK_SAMPLE_RATE_MIN = common dso_local global i64 0, align 8
@TAK_FORMAT_BPS_BITS = common dso_local global i32 0, align 4
@TAK_BPS_MIN = common dso_local global i64 0, align 8
@TAK_FORMAT_CHANNEL_BITS = common dso_local global i32 0, align 4
@TAK_CHANNELS_MIN = common dso_local global i32 0, align 4
@TAK_FORMAT_VALID_BITS = common dso_local global i32 0, align 4
@TAK_FORMAT_CH_LAYOUT_BITS = common dso_local global i32 0, align 4
@tak_channel_layouts = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_tak_parse_streaminfo(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @TAK_ENCODER_CODEC_BITS, align 4
  %11 = call i8* @get_bits(i32* %9, i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @TAK_ENCODER_PROFILE_BITS, align 4
  %16 = call i32 @skip_bits(i32* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @TAK_SIZE_FRAME_DURATION_BITS, align 4
  %19 = call i8* @get_bits(i32* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @TAK_SIZE_SAMPLES_NUM_BITS, align 4
  %23 = call i32 @get_bits64(i32* %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @TAK_FORMAT_DATA_TYPE_BITS, align 4
  %28 = call i8* @get_bits(i32* %26, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @TAK_FORMAT_SAMPLE_RATE_BITS, align 4
  %33 = call i8* @get_bits(i32* %31, i32 %32)
  %34 = load i64, i64* @TAK_SAMPLE_RATE_MIN, align 8
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @TAK_FORMAT_BPS_BITS, align 4
  %41 = call i8* @get_bits(i32* %39, i32 %40)
  %42 = load i64, i64* @TAK_BPS_MIN, align 8
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @TAK_FORMAT_CHANNEL_BITS, align 4
  %49 = call i8* @get_bits(i32* %47, i32 %48)
  %50 = load i32, i32* @TAK_CHANNELS_MIN, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @get_bits1(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %2
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @TAK_FORMAT_VALID_BITS, align 4
  %62 = call i32 @skip_bits(i32* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @get_bits1(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @TAK_FORMAT_CH_LAYOUT_BITS, align 4
  %76 = call i8* @get_bits(i32* %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** @tak_channel_layouts, align 8
  %80 = call i32 @FF_ARRAY_ELEMS(i32* %79)
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32*, i32** @tak_channel_layouts, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %82, %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %67

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %59
  br label %96

96:                                               ; preds = %95, %2
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @tak_get_nb_samples(i64 %102, i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  ret void
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits64(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @tak_get_nb_samples(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
