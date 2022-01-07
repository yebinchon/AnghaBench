; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_get_free_page.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_get_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_page* (%struct.exynos_page*, i32)* @exynos_get_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_page* @exynos_get_free_page(%struct.exynos_page* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_page*, align 8
  %4 = alloca %struct.exynos_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_page* %0, %struct.exynos_page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.exynos_page*, %struct.exynos_page** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %12, i64 %14
  %16 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = load %struct.exynos_page*, %struct.exynos_page** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %20, i64 %22
  store %struct.exynos_page* %23, %struct.exynos_page** %3, align 8
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  store %struct.exynos_page* null, %struct.exynos_page** %3, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.exynos_page*, %struct.exynos_page** %3, align 8
  ret %struct.exynos_page* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
