; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_clear_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_clear_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_context = type { i32 }
%struct.g2d_image = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"[video_exynos]: failed to clear buffer using G2D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_context*, %struct.g2d_image*)* @exynos_clear_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_clear_buffer(%struct.g2d_context* %0, %struct.g2d_image* %1) #0 {
  %3 = alloca %struct.g2d_context*, align 8
  %4 = alloca %struct.g2d_image*, align 8
  %5 = alloca i32, align 4
  store %struct.g2d_context* %0, %struct.g2d_context** %3, align 8
  store %struct.g2d_image* %1, %struct.g2d_image** %4, align 8
  %6 = load %struct.g2d_context*, %struct.g2d_context** %3, align 8
  %7 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %8 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %9 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.g2d_image*, %struct.g2d_image** %4, align 8
  %12 = getelementptr inbounds %struct.g2d_image, %struct.g2d_image* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @g2d_solid_fill(%struct.g2d_context* %6, %struct.g2d_image* %7, i32 0, i32 0, i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.g2d_context*, %struct.g2d_context** %3, align 8
  %19 = call i32 @g2d_exec(%struct.g2d_context* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @g2d_solid_fill(%struct.g2d_context*, %struct.g2d_image*, i32, i32, i32, i32) #1

declare dso_local i32 @g2d_exec(%struct.g2d_context*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
