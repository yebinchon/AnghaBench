; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_oss_dec.c_audio_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_oss_dec.c_audio_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.audio_buf_info = type { i64 }

@errno = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETISPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @audio_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.audio_buf_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @av_new_packet(%struct.TYPE_9__* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @read(i32 %27, i64 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i32 @av_packet_unref(%struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %120

47:                                               ; preds = %37
  %48 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %24
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = call i32 (...) @av_gettime()
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SNDCTL_DSP_GETISPACE, align 4
  %59 = call i64 @ioctl(i32 %57, i32 %58, %struct.audio_buf_info* %10)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %61, %49
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 1000000
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %71, %79
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %68
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i16*
  store i16* %101, i16** %12, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %115, %97
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i16*, i16** %12, align 8
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = xor i32 %109, -1
  %111 = trunc i32 %110 to i16
  %112 = load i16*, i16** %12, align 8
  store i16 %111, i16* %112, align 2
  %113 = load i16*, i16** %12, align 8
  %114 = getelementptr inbounds i16, i16* %113, i64 2
  store i16* %114, i16** %12, align 8
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %11, align 4
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %92, %68
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %47, %44, %22
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_9__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.audio_buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
