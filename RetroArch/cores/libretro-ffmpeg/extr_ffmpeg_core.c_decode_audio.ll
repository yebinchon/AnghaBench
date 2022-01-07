; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@fifo_lock = common dso_local global i32 0, align 4
@decode_thread_dead = common dso_local global i32 0, align 4
@audio_decode_fifo = common dso_local global i32 0, align 4
@main_sleeping = common dso_local global i32 0, align 4
@fifo_decode_cond = common dso_local global i32 0, align 4
@RETRO_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Thread: Audio deadlock detected ...\0A\00", align 1
@fctx = common dso_local global %struct.TYPE_13__* null, align 8
@audio_streams = common dso_local global i64* null, align 8
@audio_streams_ptr = common dso_local global i64 0, align 8
@decode_last_audio_time = common dso_local global i32 0, align 4
@fifo_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i64*, i32*)* @decode_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_audio(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = bitcast %struct.TYPE_11__* %14 to i8*
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %122, %6
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = call i32 @avcodec_decode_audio4(i32* %23, %struct.TYPE_12__* %24, i32* %15, %struct.TYPE_11__* %14)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32*, i32** %11, align 8
  store i32* %29, i32** %7, align 8
  br label %129

30:                                               ; preds = %22
  %31 = load i32, i32* %18, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %18, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %127

42:                                               ; preds = %30
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = mul i64 %47, 2
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i64 @av_realloc(i32* %54, i64 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %11, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64*, i64** %12, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %42
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32**
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @swr_convert(i32* %61, i32** %11, i32 %64, i32** %68, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = call i32 @av_frame_get_best_effort_timestamp(%struct.TYPE_12__* %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* @fifo_lock, align 4
  %76 = call i32 @slock_lock(i32 %75)
  br label %77

77:                                               ; preds = %99, %60
  %78 = load i32, i32* @decode_thread_dead, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @audio_decode_fifo, align 4
  %82 = call i64 @fifo_write_avail(i32 %81)
  %83 = load i64, i64* %17, align 8
  %84 = icmp ult i64 %82, %83
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %100

87:                                               ; preds = %85
  %88 = load i32, i32* @main_sleeping, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @fifo_decode_cond, align 4
  %92 = load i32, i32* @fifo_lock, align 4
  %93 = call i32 @scond_wait(i32 %91, i32 %92)
  br label %99

94:                                               ; preds = %87
  %95 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %96 = call i32 @log_cb(i32 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @audio_decode_fifo, align 4
  %98 = call i32 @fifo_clear(i32 %97)
  br label %100

99:                                               ; preds = %90
  br label %77

100:                                              ; preds = %94, %85
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fctx, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %103, align 8
  %105 = load i64*, i64** @audio_streams, align 8
  %106 = load i64, i64* @audio_streams_ptr, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @av_q2d(i32 %112)
  %114 = mul nsw i32 %101, %113
  store i32 %114, i32* @decode_last_audio_time, align 4
  %115 = load i32, i32* @decode_thread_dead, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %100
  %118 = load i32, i32* @audio_decode_fifo, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @fifo_write(i32 %118, i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %117, %100
  %123 = load i32, i32* @fifo_cond, align 4
  %124 = call i32 @scond_signal(i32 %123)
  %125 = load i32, i32* @fifo_lock, align 4
  %126 = call i32 @slock_unlock(i32 %125)
  br label %22

127:                                              ; preds = %41
  %128 = load i32*, i32** %11, align 8
  store i32* %128, i32** %7, align 8
  br label %129

129:                                              ; preds = %127, %28
  %130 = load i32*, i32** %7, align 8
  ret i32* %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @avcodec_decode_audio4(i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #2

declare dso_local i64 @av_realloc(i32*, i64) #2

declare dso_local i32 @swr_convert(i32*, i32**, i32, i32**, i32) #2

declare dso_local i32 @av_frame_get_best_effort_timestamp(%struct.TYPE_12__*) #2

declare dso_local i32 @slock_lock(i32) #2

declare dso_local i64 @fifo_write_avail(i32) #2

declare dso_local i32 @scond_wait(i32, i32) #2

declare dso_local i32 @log_cb(i32, i8*) #2

declare dso_local i32 @fifo_clear(i32) #2

declare dso_local i32 @av_q2d(i32) #2

declare dso_local i32 @fifo_write(i32, i32*, i64) #2

declare dso_local i32 @scond_signal(i32) #2

declare dso_local i32 @slock_unlock(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
