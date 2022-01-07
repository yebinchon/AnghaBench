; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_global_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Platform specific initialization failed!\00", align 1
@hb_muxer = common dso_local global i32 0, align 4
@hb_reader = common dso_local global i32 0, align 4
@hb_sync_video = common dso_local global i32 0, align 4
@hb_sync_audio = common dso_local global i32 0, align 4
@hb_sync_subtitle = common dso_local global i32 0, align 4
@hb_decavcodecv = common dso_local global i32 0, align 4
@hb_decavcodeca = common dso_local global i32 0, align 4
@hb_declpcm = common dso_local global i32 0, align 4
@hb_deccc608 = common dso_local global i32 0, align 4
@hb_decpgssub = common dso_local global i32 0, align 4
@hb_decsrtsub = common dso_local global i32 0, align 4
@hb_decssasub = common dso_local global i32 0, align 4
@hb_dectx3gsub = common dso_local global i32 0, align 4
@hb_decutf8sub = common dso_local global i32 0, align 4
@hb_decvobsub = common dso_local global i32 0, align 4
@hb_encvobsub = common dso_local global i32 0, align 4
@hb_encavcodec = common dso_local global i32 0, align 4
@hb_encavcodeca = common dso_local global i32 0, align 4
@hb_enctheora = common dso_local global i32 0, align 4
@hb_encvorbis = common dso_local global i32 0, align 4
@hb_encx264 = common dso_local global i32 0, align 4
@disable_hardware = common dso_local global i32 0, align 4
@hb_encca_aac = common dso_local global i32 0, align 4
@hb_encca_haac = common dso_local global i32 0, align 4
@hb_encqsv = common dso_local global i32 0, align 4
@hb_encx265 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_global_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @hb_platform_init()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @hb_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %37

8:                                                ; preds = %0
  %9 = call i32 (...) @hb_avcodec_init()
  %10 = call i32 @hb_register(i32* @hb_muxer)
  %11 = call i32 @hb_register(i32* @hb_reader)
  %12 = call i32 @hb_register(i32* @hb_sync_video)
  %13 = call i32 @hb_register(i32* @hb_sync_audio)
  %14 = call i32 @hb_register(i32* @hb_sync_subtitle)
  %15 = call i32 @hb_register(i32* @hb_decavcodecv)
  %16 = call i32 @hb_register(i32* @hb_decavcodeca)
  %17 = call i32 @hb_register(i32* @hb_declpcm)
  %18 = call i32 @hb_register(i32* @hb_deccc608)
  %19 = call i32 @hb_register(i32* @hb_decpgssub)
  %20 = call i32 @hb_register(i32* @hb_decsrtsub)
  %21 = call i32 @hb_register(i32* @hb_decssasub)
  %22 = call i32 @hb_register(i32* @hb_dectx3gsub)
  %23 = call i32 @hb_register(i32* @hb_decutf8sub)
  %24 = call i32 @hb_register(i32* @hb_decvobsub)
  %25 = call i32 @hb_register(i32* @hb_encvobsub)
  %26 = call i32 @hb_register(i32* @hb_encavcodec)
  %27 = call i32 @hb_register(i32* @hb_encavcodeca)
  %28 = call i32 @hb_register(i32* @hb_enctheora)
  %29 = call i32 @hb_register(i32* @hb_encvorbis)
  %30 = call i32 @hb_register(i32* @hb_encx264)
  %31 = call i32 (...) @hb_x264_global_init()
  %32 = load i32, i32* @disable_hardware, align 4
  %33 = call i32 @hb_common_global_init(i32 %32)
  %34 = call i32 (...) @hb_buffer_pool_init()
  %35 = call i32 (...) @hb_presets_builtin_init()
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %8, %6
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @hb_platform_init(...) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_avcodec_init(...) #1

declare dso_local i32 @hb_register(i32*) #1

declare dso_local i32 @hb_x264_global_init(...) #1

declare dso_local i32 @hb_common_global_init(i32) #1

declare dso_local i32 @hb_buffer_pool_init(...) #1

declare dso_local i32 @hb_presets_builtin_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
