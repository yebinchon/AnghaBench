; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_page_flip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.drm_surface = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@drm_page_flip.req = internal global i32* null, align 8
@drm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"DRM: failed to add atomic property for pageflip\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DRM: failed to commit for pageflip: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_surface*)* @drm_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_page_flip(%struct.drm_surface* %0) #0 {
  %2 = alloca %struct.drm_surface*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_surface* %0, %struct.drm_surface** %2, align 8
  %4 = call i32* (...) @drmModeAtomicAlloc()
  store i32* %4, i32** @drm_page_flip.req, align 8
  %5 = load i32*, i32** @drm_page_flip.req, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drm, i32 0, i32 2), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drm, i32 0, i32 1), align 4
  %8 = load %struct.drm_surface*, %struct.drm_surface** %2, align 8
  %9 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.drm_surface*, %struct.drm_surface** %2, align 8
  %12 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @drmModeAtomicAddProperty(i32* %5, i32 %6, i32 %7, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drm, i32 0, i32 0), align 4
  %25 = load i32*, i32** @drm_page_flip.req, align 8
  %26 = call i32 @drmModeAtomicCommit(i32 %24, i32* %25, i32 0, i32* null)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.drm_surface*, %struct.drm_surface** %2, align 8
  %35 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = load %struct.drm_surface*, %struct.drm_surface** %2, align 8
  %42 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32*, i32** @drm_page_flip.req, align 8
  %44 = call i32 @drmModeAtomicFree(i32* %43)
  ret void
}

declare dso_local i32* @drmModeAtomicAlloc(...) #1

declare dso_local i32 @drmModeAtomicAddProperty(i32*, i32, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @drmModeAtomicCommit(i32, i32*, i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @drmModeAtomicFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
