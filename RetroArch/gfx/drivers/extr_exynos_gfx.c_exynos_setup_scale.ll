; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_setup_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_setup_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { float, i32, i32, i32*, i32, %struct.TYPE_2__*, %struct.g2d_image** }
%struct.TYPE_2__ = type { i32 }
%struct.g2d_image = type { i32, i32, i32 }

@EXYNOS_IMAGE_FRAME = common dso_local global i64 0, align 8
@G2D_COLOR_FMT_RGB565 = common dso_local global i32 0, align 4
@G2D_ORDER_AXRGB = common dso_local global i32 0, align 4
@G2D_COLOR_FMT_XRGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_data*, i32, i32, i32)* @exynos_setup_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_setup_scale(%struct.exynos_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.exynos_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.g2d_image*, align 8
  %13 = alloca float, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %15 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %14, i32 0, i32 6
  %16 = load %struct.g2d_image**, %struct.g2d_image*** %15, align 8
  %17 = load i64, i64* @EXYNOS_IMAGE_FRAME, align 8
  %18 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %16, i64 %17
  %19 = load %struct.g2d_image*, %struct.g2d_image** %18, align 8
  store %struct.g2d_image* %19, %struct.g2d_image** %12, align 8
  %20 = load i32, i32* %6, align 4
  %21 = uitofp i32 %20 to float
  %22 = load i32, i32* %7, align 4
  %23 = uitofp i32 %22 to float
  %24 = fdiv float %21, %23
  store float %24, float* %13, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.g2d_image*, %struct.g2d_image** %12, align 8
  %27 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.g2d_image*, %struct.g2d_image** %12, align 8
  %30 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i32, i32* @G2D_COLOR_FMT_RGB565, align 4
  %35 = load i32, i32* @G2D_ORDER_AXRGB, align 4
  %36 = or i32 %34, %35
  br label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @G2D_COLOR_FMT_XRGB8888, align 4
  %39 = load i32, i32* @G2D_ORDER_AXRGB, align 4
  %40 = or i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  %43 = load %struct.g2d_image*, %struct.g2d_image** %12, align 8
  %44 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %46 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %45, i32 0, i32 0
  %47 = load float, float* %46, align 8
  %48 = load float, float* %13, align 4
  %49 = fsub float %47, %48
  %50 = call float @llvm.fabs.f32(float %49)
  %51 = fcmp olt float %50, 0x3F1A36E2E0000000
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %54 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  br label %96

59:                                               ; preds = %41
  %60 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %61 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %60, i32 0, i32 0
  %62 = load float, float* %61, align 8
  %63 = load float, float* %13, align 4
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %67 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = uitofp i32 %68 to float
  %70 = load float, float* %13, align 4
  %71 = fmul float %69, %70
  %72 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %73 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %72, i32 0, i32 0
  %74 = load float, float* %73, align 8
  %75 = fdiv float %71, %74
  %76 = fptoui float %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %78 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  br label %95

80:                                               ; preds = %59
  %81 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %82 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %85 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = uitofp i32 %86 to float
  %88 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %89 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %88, i32 0, i32 0
  %90 = load float, float* %89, align 8
  %91 = fmul float %87, %90
  %92 = load float, float* %13, align 4
  %93 = fdiv float %91, %92
  %94 = fptoui float %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %80, %65
  br label %96

96:                                               ; preds = %95, %52
  %97 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %98 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub i32 %99, %100
  %102 = udiv i32 %101, 2
  %103 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %104 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %108 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sub i32 %109, %110
  %112 = udiv i32 %111, 2
  %113 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %114 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %119 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %124 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %129 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %134 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  store i32 %132, i32* %136, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %151, %96
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %140 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %145 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %144, i32 0, i32 5
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %137

154:                                              ; preds = %137
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
