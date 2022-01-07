; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_retroarch_set_frame_limit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_retroarch_set_frame_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float }
%struct.retro_system_av_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }

@configuration_settings = common dso_local global %struct.TYPE_7__* null, align 8
@video_driver_av_info = common dso_local global %struct.retro_system_av_info zeroinitializer, align 4
@frame_limit_last_time = common dso_local global i32 0, align 4
@frame_limit_minimum_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retroarch_set_frame_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retroarch_set_frame_limit() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.retro_system_av_info*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configuration_settings, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  store %struct.retro_system_av_info* @video_driver_av_info, %struct.retro_system_av_info** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  store float %9, float* %3, align 4
  %10 = load float, float* %3, align 4
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %15

13:                                               ; preds = %0
  %14 = load float, float* %3, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi float [ 1.000000e+00, %12 ], [ %14, %13 ]
  store float %16, float* %4, align 4
  %17 = call i32 (...) @cpu_features_get_time_usec()
  store i32 %17, i32* @frame_limit_last_time, align 4
  %18 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %19 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load float, float* %4, align 4
  %23 = fmul float %21, %22
  %24 = fdiv float 1.000000e+06, %23
  %25 = call i64 @roundf(float %24)
  store i64 %25, i64* @frame_limit_minimum_time, align 8
  ret void
}

declare dso_local i32 @cpu_features_get_time_usec(...) #1

declare dso_local i64 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
