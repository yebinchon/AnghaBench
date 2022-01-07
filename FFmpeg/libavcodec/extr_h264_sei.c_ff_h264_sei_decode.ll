; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_ff_h264_sei_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_ff_h264_sei_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SEI type %d size %d truncated at %d\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown SEI type %d\0A\00", align 1
@AVERROR_PS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_sei_decode(%struct.TYPE_4__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %156, %4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @get_bits_left(i32* %16)
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @show_bits(i32* %20, i32 16)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %165

25:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @get_bits_left(i32* %27)
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %5, align 4
  br label %167

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @show_bits(i32* %33, i32 8)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @get_bits(i32* %40, i32 8)
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %26, label %43

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @get_bits_left(i32* %45)
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %5, align 4
  br label %167

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @show_bits(i32* %51, i32 8)
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @get_bits(i32* %58, i32 8)
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %44, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @get_bits_left(i32* %63)
  %65 = sdiv i32 %64, 8
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul i32 8, %71
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @get_bits_left(i32* %73)
  %75 = call i32 (i8*, i32, i8*, i32, ...) @av_log(i8* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72, i32 %74)
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %5, align 4
  br label %167

77:                                               ; preds = %61
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @get_bits_count(i32* %78)
  %80 = load i32, i32* %12, align 4
  %81 = mul i32 8, %80
  %82 = add i32 %79, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %137 [
    i32 131, label %84
    i32 129, label %91
    i32 128, label %97
    i32 130, label %104
    i32 135, label %110
    i32 133, label %117
    i32 134, label %122
    i32 132, label %127
    i32 136, label %132
  ]

84:                                               ; preds = %77
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @decode_picture_timing(i32* %86, i32* %87, i32* %88, i8* %89)
  store i32 %90, i32* %14, align 4
  br label %142

91:                                               ; preds = %77
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @decode_registered_user_data(%struct.TYPE_4__* %92, i32* %93, i8* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %142

97:                                               ; preds = %77
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 6
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @decode_unregistered_user_data(i32* %99, i32* %100, i8* %101, i32 %102)
  store i32 %103, i32* %14, align 4
  br label %142

104:                                              ; preds = %77
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @decode_recovery_point(i32* %106, i32* %107, i8* %108)
  store i32 %109, i32* %14, align 4
  br label %142

110:                                              ; preds = %77
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @decode_buffering_period(i32* %112, i32* %113, i32* %114, i8* %115)
  store i32 %116, i32* %14, align 4
  br label %142

117:                                              ; preds = %77
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @decode_frame_packing_arrangement(i32* %119, i32* %120)
  store i32 %121, i32* %14, align 4
  br label %142

122:                                              ; preds = %77
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @decode_display_orientation(i32* %124, i32* %125)
  store i32 %126, i32* %14, align 4
  br label %142

127:                                              ; preds = %77
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @decode_green_metadata(i32* %129, i32* %130)
  store i32 %131, i32* %14, align 4
  br label %142

132:                                              ; preds = %77
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @decode_alternative_transfer(i32* %134, i32* %135)
  store i32 %136, i32* %14, align 4
  br label %142

137:                                              ; preds = %77
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* @AV_LOG_DEBUG, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i8*, i32, i8*, i32, ...) @av_log(i8* %138, i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %132, %127, %122, %117, %110, %104, %97, %91, %84
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @AVERROR_PS_NOT_FOUND, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %5, align 4
  br label %167

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @get_bits_count(i32* %159)
  %161 = sub i32 %158, %160
  %162 = call i32 @skip_bits_long(i32* %157, i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @align_get_bits(i32* %163)
  br label %15

165:                                              ; preds = %23
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %149, %67, %48, %30
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @show_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @decode_picture_timing(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @decode_registered_user_data(%struct.TYPE_4__*, i32*, i8*, i32) #1

declare dso_local i32 @decode_unregistered_user_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @decode_recovery_point(i32*, i32*, i8*) #1

declare dso_local i32 @decode_buffering_period(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @decode_frame_packing_arrangement(i32*, i32*) #1

declare dso_local i32 @decode_display_orientation(i32*, i32*) #1

declare dso_local i32 @decode_green_metadata(i32*, i32*) #1

declare dso_local i32 @decode_alternative_transfer(i32*, i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
