; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_free_page.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_page = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.exynos_data = type { i32, i32, i32, %struct.g2d_image* }
%struct.g2d_image = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_page* (%struct.exynos_data*)* @exynos_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_page* @exynos_free_page(%struct.exynos_data* %0) #0 {
  %2 = alloca %struct.exynos_data*, align 8
  %3 = alloca %struct.exynos_page*, align 8
  %4 = alloca %struct.g2d_image*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %2, align 8
  store %struct.exynos_page* null, %struct.exynos_page** %3, align 8
  %5 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %5, i32 0, i32 3
  %7 = load %struct.g2d_image*, %struct.g2d_image** %6, align 8
  store %struct.g2d_image* %7, %struct.g2d_image** %4, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %10 = icmp ne %struct.exynos_page* %9, null
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %14 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %17 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.exynos_page* @exynos_get_free_page(i32 %15, i32 %18)
  store %struct.exynos_page* %19, %struct.exynos_page** %3, align 8
  %20 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %21 = icmp ne %struct.exynos_page* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = call i32 @drm_wait_flip(i32 -1)
  br label %24

24:                                               ; preds = %22, %12
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %32 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %36 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %41 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %44 = call i64 @exynos_clear_buffer(i32 %42, %struct.g2d_image* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %48 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %52 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  ret %struct.exynos_page* %53
}

declare dso_local %struct.exynos_page* @exynos_get_free_page(i32, i32) #1

declare dso_local i32 @drm_wait_flip(i32) #1

declare dso_local i64 @exynos_clear_buffer(i32, %struct.g2d_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
