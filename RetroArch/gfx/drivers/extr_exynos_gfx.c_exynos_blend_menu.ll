; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blend_menu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blend_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { i32, i32, i32*, i32, %struct.g2d_image** }
%struct.g2d_image = type { i32, i32 }

@EXYNOS_IMAGE_MENU = common dso_local global i64 0, align 8
@G2D_OP_INTERPOLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[video_exynos]: failed to blend menu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*, i32)* @exynos_blend_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_blend_menu(%struct.exynos_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g2d_image*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %8 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %7, i32 0, i32 4
  %9 = load %struct.g2d_image**, %struct.g2d_image*** %8, align 8
  %10 = load i64, i64* @EXYNOS_IMAGE_MENU, align 8
  %11 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %9, i64 %10
  %12 = load %struct.g2d_image*, %struct.g2d_image** %11, align 8
  store %struct.g2d_image* %12, %struct.g2d_image** %6, align 8
  %13 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.g2d_image*, %struct.g2d_image** %6, align 8
  %17 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.g2d_image*, %struct.g2d_image** %6, align 8
  %21 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.g2d_image*, %struct.g2d_image** %6, align 8
  %24 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %27 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %37 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @G2D_OP_INTERPOLATE, align 4
  %47 = call i64 @g2d_scale_and_blend(i32 %15, %struct.g2d_image* %16, i32 %19, i32 0, i32 0, i32 %22, i32 %25, i32 %30, i32 %35, i32 %40, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @g2d_exec(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %2
  %56 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @g2d_scale_and_blend(i32, %struct.g2d_image*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @g2d_exec(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
