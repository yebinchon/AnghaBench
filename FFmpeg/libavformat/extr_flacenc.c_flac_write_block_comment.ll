; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_block_comment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_block_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ffmpeg\00", align 1
@LIBAVFORMAT_IDENT = common dso_local global i8* null, align 8
@ff_vorbiscomment_metadata_conv = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32, i32)* @flac_write_block_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_write_block_comment(i32* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** @LIBAVFORMAT_IDENT, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %16 ], [ %18, %17 ]
  store i8* %20, i8** %10, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32, i32* @ff_vorbiscomment_metadata_conv, align 4
  %23 = call i32 @ff_metadata_conv(i32** %21, i32 %22, i32* null)
  %24 = load i32**, i32*** %7, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @ff_vorbiscomment_length(i32* %25, i8* %26, i32* null, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 16777212
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %19
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 4
  %36 = call i32* @av_malloc(i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %60

42:                                               ; preds = %33
  %43 = load i32*, i32** %13, align 8
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 132, i32 4
  %48 = call i32 @bytestream_put_byte(i32** %12, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bytestream_put_be24(i32** %12, i32 %49)
  %51 = load i32**, i32*** %7, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @ff_vorbiscomment_write(i32** %12, i32** %51, i8* %52, i32* null, i32 0)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i32 @avio_write(i32* %54, i32* %55, i32 %57)
  %59 = call i32 @av_freep(i32** %13)
  store i32* null, i32** %12, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %42, %39, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @ff_metadata_conv(i32**, i32, i32*) #1

declare dso_local i32 @ff_vorbiscomment_length(i32*, i8*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_be24(i32**, i32) #1

declare dso_local i32 @ff_vorbiscomment_write(i32**, i32**, i8*, i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
