; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_finish_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_finish_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32* }

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @flac_finish_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_finish_header(%struct.AVFormatContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AVFormatContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %3, align 8
  %9 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %10 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 8192, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @av_clip_uintp2(i32 %16, i32 24)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %15
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %21 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %26 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %7, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %56

38:                                               ; preds = %24
  %39 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @flac_write_picture(%struct.AVFormatContext* %39, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @av_packet_unref(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %48 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AV_EF_EXPLODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %89

55:                                               ; preds = %46, %38
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %18

59:                                               ; preds = %18
  %60 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %61 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %64 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %63, i32 0, i32 5
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %70 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @flac_write_block_comment(i32 %62, i32* %64, i32 %68, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %89

79:                                               ; preds = %59
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %84 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @flac_write_block_padding(i32 %85, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %82, %79
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %77, %53
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @flac_write_picture(%struct.AVFormatContext*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @flac_write_block_comment(i32, i32*, i32, i32) #1

declare dso_local i32 @flac_write_block_padding(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
