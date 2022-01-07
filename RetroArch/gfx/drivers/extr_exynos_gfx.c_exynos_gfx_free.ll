; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_video = type { i32*, %struct.TYPE_2__*, i32, i32, i32, %struct.exynos_video* }
%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.exynos_data = type { i32*, %struct.TYPE_2__*, i32, i32, i32, %struct.exynos_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exynos_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.exynos_video*, align 8
  %4 = alloca %struct.exynos_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.exynos_video*
  store %struct.exynos_video* %6, %struct.exynos_video** %3, align 8
  %7 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %8 = icmp ne %struct.exynos_video* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %11, i32 0, i32 5
  %13 = load %struct.exynos_video*, %struct.exynos_video** %12, align 8
  %14 = bitcast %struct.exynos_video* %13 to %struct.exynos_data*
  store %struct.exynos_data* %14, %struct.exynos_data** %4, align 8
  %15 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %16 = bitcast %struct.exynos_data* %15 to %struct.exynos_video*
  %17 = call i32 @exynos_g2d_free(%struct.exynos_video* %16)
  br label %18

18:                                               ; preds = %27, %10
  %19 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %20 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %23 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @exynos_pages_used(i32 %21, i32 %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @drm_wait_flip(i32 -1)
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %31 = bitcast %struct.exynos_data* %30 to %struct.exynos_video*
  %32 = call i32 @exynos_free(%struct.exynos_video* %31)
  %33 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %34 = bitcast %struct.exynos_data* %33 to %struct.exynos_video*
  %35 = call i32 @exynos_deinit(%struct.exynos_video* %34)
  %36 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %37 = bitcast %struct.exynos_data* %36 to %struct.exynos_video*
  %38 = call i32 @exynos_close(%struct.exynos_video* %37)
  %39 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %40 = bitcast %struct.exynos_data* %39 to %struct.exynos_video*
  %41 = call i32 @free(%struct.exynos_video* %40)
  %42 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %29
  %47 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %48 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %53 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (i32*)*, i32 (i32*)** %55, align 8
  %57 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %58 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 %56(i32* %59)
  br label %61

61:                                               ; preds = %51, %46, %29
  %62 = load %struct.exynos_video*, %struct.exynos_video** %3, align 8
  %63 = call i32 @free(%struct.exynos_video* %62)
  br label %64

64:                                               ; preds = %61, %9
  ret void
}

declare dso_local i32 @exynos_g2d_free(%struct.exynos_video*) #1

declare dso_local i32 @exynos_pages_used(i32, i32) #1

declare dso_local i32 @drm_wait_flip(i32) #1

declare dso_local i32 @exynos_free(%struct.exynos_video*) #1

declare dso_local i32 @exynos_deinit(%struct.exynos_video*) #1

declare dso_local i32 @exynos_close(%struct.exynos_video*) #1

declare dso_local i32 @free(%struct.exynos_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
