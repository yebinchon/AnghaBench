; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blend_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blend_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { i32, i32, i32, i32, i32, %struct.g2d_image** }
%struct.g2d_image = type { i32, i32 }

@EXYNOS_IMAGE_FONT = common dso_local global i64 0, align 8
@G2D_OP_INTERPOLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[video_exynos]: failed to blend font\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*)* @exynos_blend_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_blend_font(%struct.exynos_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_data*, align 8
  %4 = alloca %struct.g2d_image*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %3, align 8
  %5 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %6 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %5, i32 0, i32 5
  %7 = load %struct.g2d_image**, %struct.g2d_image*** %6, align 8
  %8 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %9 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %7, i64 %8
  %10 = load %struct.g2d_image*, %struct.g2d_image** %9, align 8
  store %struct.g2d_image* %10, %struct.g2d_image** %4, align 8
  %11 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %15 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %19 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %22 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %28 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @G2D_OP_INTERPOLATE, align 4
  %31 = call i64 @g2d_scale_and_blend(i32 %13, %struct.g2d_image* %14, i32 %17, i32 0, i32 0, i32 %20, i32 %23, i32 0, i32 0, i32 %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %35 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @g2d_exec(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %1
  %40 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %2, align 4
  ret i32 %43
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
