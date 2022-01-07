; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_drm_encoder = common dso_local global i32* null, align 8
@g_drm_connector = common dso_local global i32* null, align 8
@g_drm_resources = common dso_local global i32* null, align 8
@g_drm_fds = common dso_local global i32 0, align 4
@g_drm_evctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_free() #0 {
  %1 = load i32*, i32** @g_drm_encoder, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @g_drm_encoder, align 8
  %5 = call i32 @drmModeFreeEncoder(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @g_drm_connector, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @g_drm_connector, align 8
  %11 = call i32 @drmModeFreeConnector(i32* %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @g_drm_resources, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @g_drm_resources, align 8
  %17 = call i32 @drmModeFreeResources(i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = call i32 @memset(i32* @g_drm_fds, i32 0, i32 4)
  %20 = call i32 @memset(i32* @g_drm_evctx, i32 0, i32 4)
  store i32* null, i32** @g_drm_encoder, align 8
  store i32* null, i32** @g_drm_connector, align 8
  store i32* null, i32** @g_drm_resources, align 8
  ret void
}

declare dso_local i32 @drmModeFreeEncoder(i32*) #1

declare dso_local i32 @drmModeFreeConnector(i32*) #1

declare dso_local i32 @drmModeFreeResources(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
