; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_init_media_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_init_media_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { double, float, float, i64, i32 }
%struct.TYPE_5__ = type { float, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@actx = common dso_local global %struct.TYPE_8__** null, align 8
@media = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@vctx = common dso_local global %struct.TYPE_5__* null, align 8
@ASS_HINTING_LIGHT = common dso_local global i32 0, align 4
@ass = common dso_local global i32 0, align 4
@ass_extra_data = common dso_local global i64* null, align 8
@ass_extra_data_size = common dso_local global i32* null, align 8
@ass_msg_cb = common dso_local global i32 0, align 4
@ass_render = common dso_local global i32 0, align 4
@ass_track = common dso_local global i32* null, align 8
@attachments = common dso_local global %struct.TYPE_7__* null, align 8
@attachments_size = common dso_local global i32 0, align 4
@sctx = common dso_local global i64* null, align 8
@subtitle_streams_num = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_media_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_media_info() #0 {
  %1 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @actx, align 8
  %2 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %1, i64 0
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @actx, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %6, i64 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @media, i32 0, i32 4), align 8
  br label %11

11:                                               ; preds = %5, %0
  store double 6.000000e+01, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @media, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @media, i32 0, i32 3), align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  store float %20, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @media, i32 0, i32 1), align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to float
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call float @av_q2d(i32 %27)
  %29 = fmul float %24, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vctx, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = fdiv float %29, %32
  store float %33, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @media, i32 0, i32 2), align 4
  br label %34

34:                                               ; preds = %14, %11
  ret i32 1
}

declare dso_local float @av_q2d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
