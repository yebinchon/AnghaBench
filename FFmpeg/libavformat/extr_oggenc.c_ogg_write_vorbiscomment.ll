; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_vorbiscomment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_vorbiscomment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ffmpeg\00", align 1
@LIBAVFORMAT_IDENT = common dso_local global i8* null, align 8
@ff_vorbiscomment_metadata_conv = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32**, i32, i32**, i32)* @ogg_write_vorbiscomment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ogg_write_vorbiscomment(i32 %0, i32 %1, i32* %2, i32** %3, i32 %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %25

23:                                               ; preds = %7
  %24 = load i8*, i8** @LIBAVFORMAT_IDENT, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %22 ], [ %24, %23 ]
  store i8* %26, i8** %16, align 8
  %27 = load i32**, i32*** %12, align 8
  %28 = load i32, i32* @ff_vorbiscomment_metadata_conv, align 4
  %29 = call i32 @ff_metadata_conv(i32** %27, i32 %28, i32* null)
  %30 = load i32, i32* %9, align 4
  %31 = load i32**, i32*** %12, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i32**, i32*** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @ff_vorbiscomment_length(i32* %32, i8* %33, i32** %34, i32 %35)
  %37 = add nsw i32 %30, %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @INT_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32* null, i32** %8, align 8
  br label %69

44:                                               ; preds = %25
  %45 = load i32, i32* %17, align 4
  %46 = call i32* @av_mallocz(i32 %45)
  store i32* %46, i32** %18, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32* null, i32** %8, align 8
  br label %69

50:                                               ; preds = %44
  %51 = load i32*, i32** %18, align 8
  store i32* %51, i32** %19, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %18, align 8
  %56 = load i32**, i32*** %12, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i32**, i32*** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ff_vorbiscomment_write(i32** %18, i32** %56, i8* %57, i32** %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = call i32 @bytestream_put_byte(i32** %18, i32 1)
  br label %65

65:                                               ; preds = %63, %50
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %19, align 8
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %65, %49, %43
  %70 = load i32*, i32** %8, align 8
  ret i32* %70
}

declare dso_local i32 @ff_metadata_conv(i32**, i32, i32*) #1

declare dso_local i32 @ff_vorbiscomment_length(i32*, i8*, i32**, i32) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @ff_vorbiscomment_write(i32**, i32**, i8*, i32**, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
