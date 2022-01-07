; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.exynos_video = type { %struct.exynos_data* }
%struct.exynos_data = type { i32, %struct.TYPE_3__**, %struct.g2d_image** }
%struct.TYPE_3__ = type { i32 }
%struct.g2d_image = type { i32, i32, i32, i32, i8 }

@defaults = common dso_local global %struct.TYPE_4__* null, align 8
@EXYNOS_IMAGE_MENU = common dso_local global i64 0, align 8
@G2D_COLOR_FMT_ARGB8888 = common dso_local global i32 0, align 4
@G2D_ORDER_RGBAX = common dso_local global i32 0, align 4
@G2D_COLOR_FMT_ARGB4444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @exynos_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.exynos_video*, align 8
  %15 = alloca %struct.exynos_data*, align 8
  %16 = alloca %struct.g2d_image*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %19 = load i64, i64* @EXYNOS_IMAGE_MENU, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.exynos_video*
  store %struct.exynos_video* %24, %struct.exynos_video** %14, align 8
  %25 = load %struct.exynos_video*, %struct.exynos_video** %14, align 8
  %26 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %25, i32 0, i32 0
  %27 = load %struct.exynos_data*, %struct.exynos_data** %26, align 8
  store %struct.exynos_data* %27, %struct.exynos_data** %15, align 8
  %28 = load %struct.exynos_data*, %struct.exynos_data** %15, align 8
  %29 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %28, i32 0, i32 2
  %30 = load %struct.g2d_image**, %struct.g2d_image*** %29, align 8
  %31 = load i64, i64* @EXYNOS_IMAGE_MENU, align 8
  %32 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %30, i64 %31
  %33 = load %struct.g2d_image*, %struct.g2d_image** %32, align 8
  store %struct.g2d_image* %33, %struct.g2d_image** %16, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 4, i32 2
  %41 = mul i32 %36, %40
  store i32 %41, i32* %17, align 4
  %42 = load %struct.exynos_data*, %struct.exynos_data** %15, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @exynos_realloc_buffer(%struct.exynos_data* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %6
  br label %94

48:                                               ; preds = %6
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.g2d_image*, %struct.g2d_image** %16, align 8
  %51 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.g2d_image*, %struct.g2d_image** %16, align 8
  %54 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 4, i32 2
  %60 = mul i32 %55, %59
  %61 = load %struct.g2d_image*, %struct.g2d_image** %16, align 8
  %62 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  %66 = load i32, i32* @G2D_COLOR_FMT_ARGB8888, align 4
  %67 = load i32, i32* @G2D_ORDER_RGBAX, align 4
  %68 = or i32 %66, %67
  br label %73

69:                                               ; preds = %48
  %70 = load i32, i32* @G2D_COLOR_FMT_ARGB4444, align 4
  %71 = load i32, i32* @G2D_ORDER_RGBAX, align 4
  %72 = or i32 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32 [ %68, %65 ], [ %72, %69 ]
  %75 = load %struct.g2d_image*, %struct.g2d_image** %16, align 8
  %76 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load float, float* %12, align 4
  %78 = fmul float 2.550000e+02, %77
  %79 = fptoui float %78 to i8
  %80 = load %struct.g2d_image*, %struct.g2d_image** %16, align 8
  %81 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %80, i32 0, i32 4
  store i8 %79, i8* %81, align 4
  %82 = load %struct.exynos_data*, %struct.exynos_data** %15, align 8
  %83 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %84, i64 %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @memcpy_neon(i32 %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %73, %47
  ret void
}

declare dso_local i64 @exynos_realloc_buffer(%struct.exynos_data*, i32, i32) #1

declare dso_local i32 @memcpy_neon(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
