; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_clean_up_pages.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_clean_up_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_page*, i32)* @exynos_clean_up_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_clean_up_pages(%struct.exynos_page* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_page* %0, %struct.exynos_page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %51, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %11, i64 %13
  %15 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %10
  %19 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %19, i64 %21
  %23 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %27, i64 %29
  %31 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %33, i64 %35
  %37 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drmModeRmFB(i64 %32, i32 %40)
  br label %42

42:                                               ; preds = %26, %18
  %43 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %43, i64 %45
  %47 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @exynos_bo_destroy(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %42, %10
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local i32 @drmModeRmFB(i64, i32) #1

declare dso_local i32 @exynos_bo_destroy(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
