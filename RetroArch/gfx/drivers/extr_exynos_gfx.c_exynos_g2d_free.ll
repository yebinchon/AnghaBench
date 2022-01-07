; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_g2d_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_g2d_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { i32, i32**, i32* }

@EXYNOS_IMAGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_data*)* @exynos_g2d_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_g2d_free(%struct.exynos_data* %0) #0 {
  %2 = alloca %struct.exynos_data*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %2, align 8
  %4 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @free(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EXYNOS_IMAGE_COUNT, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %14 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free(i32* %19)
  %21 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %32 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @g2d_fini(i32 %33)
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @g2d_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
