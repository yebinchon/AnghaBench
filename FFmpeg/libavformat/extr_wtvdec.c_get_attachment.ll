; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvdec.c_get_attachment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvdec.c_get_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MJPEG = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @get_attachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_attachment(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @avio_tell(i32* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %18 = call i32 @avio_get_str16le(i32* %15, i32 %16, i8* %17, i32 1024)
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %84

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @avio_r8(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %29 = call i32 @avio_get_str16le(i32* %26, i32 %27, i8* %28, i32 1024)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @avio_rl32(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %84

35:                                               ; preds = %23
  %36 = load i32*, i32** %4, align 8
  %37 = call %struct.TYPE_6__* @avformat_new_stream(i32* %36, i32* null)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %84

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %45 = call i32 @av_dict_set(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 0)
  %46 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @AV_CODEC_ID_MJPEG, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @av_get_packet(i32* %58, %struct.TYPE_7__* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %84

66:                                               ; preds = %41
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %66, %65, %40, %34, %22
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i32 @avio_seek(i32* %85, i64 %89, i32 %90)
  ret void
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_get_str16le(i32*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local %struct.TYPE_6__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
