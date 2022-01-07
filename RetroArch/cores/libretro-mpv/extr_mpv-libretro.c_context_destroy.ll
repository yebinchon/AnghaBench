; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-mpv/extr_mpv-libretro.c_context_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-mpv/extr_mpv-libretro.c_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"playback-time\00", align 1
@MPV_FORMAT_INT64 = common dso_local global i32 0, align 4
@playback_time = common dso_local global i32 0, align 4
@mpv_gl = common dso_local global i32 0, align 4
@RETRO_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Context destroyed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @context_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_destroy() #0 {
  %1 = load i32, i32* @mpv, align 4
  %2 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %3 = call i32 @mpv_get_property(i32 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %2, i32* @playback_time)
  %4 = load i32, i32* @mpv_gl, align 4
  %5 = call i32 @mpv_render_context_free(i32 %4)
  %6 = load i32, i32* @mpv, align 4
  %7 = call i32 @mpv_terminate_destroy(i32 %6)
  %8 = load i32, i32* @RETRO_LOG_INFO, align 4
  %9 = call i32 @log_cb(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mpv_get_property(i32, i8*, i32, i32*) #1

declare dso_local i32 @mpv_render_context_free(i32) #1

declare dso_local i32 @mpv_terminate_destroy(i32) #1

declare dso_local i32 @log_cb(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
