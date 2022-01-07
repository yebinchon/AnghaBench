; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_thread_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_thread_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_TIME_BASE = common dso_local global double 0.000000e+00, align 8
@decode_last_video_time = common dso_local global double 0.000000e+00, align 8
@decode_last_audio_time = common dso_local global double 0.000000e+00, align 8
@fctx = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@RETRO_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"av_seek_frame() failed.\0A\00", align 1
@actx = common dso_local global i64* null, align 8
@audio_streams_ptr = common dso_local global i64 0, align 8
@vctx = common dso_local global i64 0, align 8
@sctx = common dso_local global i64* null, align 8
@subtitle_streams_ptr = common dso_local global i64 0, align 8
@ass_track = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @decode_thread_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_thread_seek(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = load double, double* @AV_TIME_BASE, align 8
  %7 = fmul double %5, %6
  %8 = fptosi double %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load double, double* %2, align 8
  store double %13, double* @decode_last_video_time, align 8
  %14 = load double, double* %2, align 8
  store double %14, double* @decode_last_audio_time, align 8
  %15 = load i32, i32* @fctx, align 4
  %16 = load i32, i32* @INT64_MIN, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @INT64_MAX, align 4
  %19 = call i32 @avformat_seek_file(i32 %15, i32 -1, i32 %16, i64 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %24 = call i32 @log_cb(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i64*, i64** @actx, align 8
  %27 = load i64, i64* @audio_streams_ptr, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64*, i64** @actx, align 8
  %33 = load i64, i64* @audio_streams_ptr, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @avcodec_flush_buffers(i64 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i64, i64* @vctx, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @vctx, align 8
  %42 = call i32 @avcodec_flush_buffers(i64 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64*, i64** @sctx, align 8
  %45 = load i64, i64* @subtitle_streams_ptr, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64*, i64** @sctx, align 8
  %51 = load i64, i64* @subtitle_streams_ptr, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @avcodec_flush_buffers(i64 %53)
  br label %55

55:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @avformat_seek_file(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @log_cb(i32, i8*) #1

declare dso_local i32 @avcodec_flush_buffers(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
