; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_set_nonblock_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_set_nonblock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_video = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @exynos_gfx_set_nonblock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_gfx_set_nonblock_state(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_video*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.exynos_video*
  store %struct.exynos_video* %7, %struct.exynos_video** %5, align 8
  %8 = load %struct.exynos_video*, %struct.exynos_video** %5, align 8
  %9 = icmp ne %struct.exynos_video* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.exynos_video*, %struct.exynos_video** %5, align 8
  %12 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.exynos_video*, %struct.exynos_video** %5, align 8
  %21 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %15, %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
