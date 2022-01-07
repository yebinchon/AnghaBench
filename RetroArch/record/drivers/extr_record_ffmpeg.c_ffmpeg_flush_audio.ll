; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_flush_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_flush_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.record_audio_data = type { i64, i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i64)* @ffmpeg_flush_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_flush_audio(%struct.TYPE_12__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.record_audio_data, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @fifo_read_avail(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = bitcast %struct.record_audio_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @fifo_read(i32 %20, i8* %21, i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = udiv i64 %24, %30
  %32 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 @ffmpeg_push_audio_thread(%struct.TYPE_12__* %35, %struct.record_audio_data* %8, i32 0)
  br label %37

37:                                               ; preds = %16, %3
  br label %38

38:                                               ; preds = %54, %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @encode_audio(%struct.TYPE_12__* %39, %struct.TYPE_13__* %9, i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @av_interleaved_write_frame(i32 %50, %struct.TYPE_13__* %9)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %42, %38
  br label %55

54:                                               ; preds = %46
  br label %38

55:                                               ; preds = %53
  ret void
}

declare dso_local i64 @fifo_read_avail(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fifo_read(i32, i8*, i64) #1

declare dso_local i32 @ffmpeg_push_audio_thread(%struct.TYPE_12__*, %struct.record_audio_data*, i32) #1

declare dso_local i32 @encode_audio(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @av_interleaved_write_frame(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
