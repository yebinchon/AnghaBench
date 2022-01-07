; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_oma_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_oma_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@AV_CODEC_ID_ATRAC3PAL = common dso_local global i64 0, align 8
@AV_CODEC_ID_ATRAC3AL = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*, i32, i32, i32)* @oma_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_read_seek(%struct.AVFormatContext* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.AVFormatContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %14 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %17 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %11, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_CODEC_ID_ATRAC3PAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_CODEC_ID_ATRAC3AL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %4
  store i32 -1, i32* %5, align 4
  br label %92

37:                                               ; preds = %28
  %38 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ff_pcm_read_seek(%struct.AVFormatContext* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %92

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %54 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @avio_tell(i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52, %49
  br label %86

62:                                               ; preds = %52
  %63 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %64 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SEEK_CUR, align 4
  %67 = call i32 @avio_seek(i32 %65, i32 -8, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %86

70:                                               ; preds = %62
  %71 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %72 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @avio_read(i32 %73, i32 %76, i32 8)
  store i32 %77, i32* %12, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %86

85:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %92

86:                                               ; preds = %84, %69, %61
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memset(i32 %89, i32 0, i32 8)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %85, %47, %36
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ff_pcm_read_seek(%struct.AVFormatContext*, i32, i32, i32) #1

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avio_read(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
