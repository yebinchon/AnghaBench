; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_decode_extradata_ps_mp4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_decode_extradata_ps_mp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SPS decoding failure, trying again after escaping the NAL\0A\00", align 1
@INT16_MAX = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i8*)* @decode_extradata_ps_mp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_extradata_ps_mp4(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @decode_extradata_ps(i32* %17, i32 %18, i32* %19, i32 1, i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @AV_EF_EXPLODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @AV_LOG_WARNING, align 4
  %32 = call i32 @av_log(i8* %30, i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 2
  %35 = load i32, i32* @INT16_MAX, align 4
  %36 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 3
  %39 = icmp sge i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ERANGE, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %92

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 3
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32* @av_mallocz(i32 %49)
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %92

56:                                               ; preds = %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @bytestream2_init(i32* %13, i32* %57, i32 %58)
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @bytestream2_init_writer(i32* %14, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %78, %56
  %64 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %68 = icmp sge i32 %67, 3
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = call i32 @bytestream2_peek_be24(i32* %13)
  %71 = icmp sle i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i32 @bytestream2_put_be24(i32* %14, i32 3)
  %74 = call i32 @bytestream2_skip(i32* %13, i32 2)
  br label %78

75:                                               ; preds = %69, %66
  %76 = call i32 @bytestream2_get_byte(i32* %13)
  %77 = call i32 @bytestream2_put_byte(i32* %14, i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %63

79:                                               ; preds = %63
  %80 = call i32 @bytestream2_tell_p(i32* %14)
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 %82, 2
  %84 = call i32 @AV_WB16(i32* %81, i32 %83)
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @decode_extradata_ps(i32* %85, i32 %86, i32* %87, i32 1, i8* %88)
  %90 = call i32 @av_freep(i32** %15)
  br label %91

91:                                               ; preds = %79, %24, %5
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %53, %40
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @decode_extradata_ps(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_peek_be24(i32*) #1

declare dso_local i32 @bytestream2_put_be24(i32*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
