; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blit_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_blit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.exynos_data = type { i32*, i32, i32, i32, %struct.TYPE_3__**, %struct.g2d_image** }
%struct.TYPE_3__ = type { i32 }
%struct.g2d_image = type { i32 }

@defaults = common dso_local global %struct.TYPE_4__* null, align 8
@EXYNOS_IMAGE_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"[video_exynos]: failed to blit frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*, i8*, i32)* @exynos_blit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_blit_frame(%struct.exynos_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g2d_image*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %12 = load i64, i64* @EXYNOS_IMAGE_FRAME, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %16, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %23, i32 0, i32 5
  %25 = load %struct.g2d_image**, %struct.g2d_image*** %24, align 8
  %26 = load i64, i64* @EXYNOS_IMAGE_FRAME, align 8
  %27 = getelementptr inbounds %struct.g2d_image*, %struct.g2d_image** %25, i64 %26
  %28 = load %struct.g2d_image*, %struct.g2d_image** %27, align 8
  store %struct.g2d_image* %28, %struct.g2d_image** %10, align 8
  %29 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @exynos_realloc_buffer(%struct.exynos_data* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

35:                                               ; preds = %3
  %36 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %37 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy_neon(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.g2d_image*, %struct.g2d_image** %10, align 8
  %50 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %52 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g2d_image*, %struct.g2d_image** %10, align 8
  %55 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %56 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %59 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %64 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %69 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %74 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %79 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %84 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @g2d_copy_with_scale(i32 %53, %struct.g2d_image* %54, i32 %57, i32 0, i32 0, i32 %62, i32 %67, i32 %72, i32 %77, i32 %82, i32 %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %35
  %91 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %92 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @g2d_exec(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90, %35
  %97 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %99

98:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %96, %34
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @exynos_realloc_buffer(%struct.exynos_data*, i32, i32) #1

declare dso_local i32 @memcpy_neon(i32, i8*, i32) #1

declare dso_local i64 @g2d_copy_with_scale(i32, %struct.g2d_image*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @g2d_exec(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
