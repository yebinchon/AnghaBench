; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_qnx_ctx.c_gfx_ctx_qnx__get_metrics.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_qnx_ctx.c_gfx_ctx_qnx__get_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gfx_ctx_qnx__get_metrics.dpi = internal global i32 -1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, float*)* @gfx_ctx_qnx__get_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_qnx__get_metrics(i8* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %29 [
    i32 129, label %12
    i32 130, label %13
    i32 131, label %14
    i32 128, label %28
  ]

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @dpi_get_density(i32* %18)
  store i32 %19, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %20 = load i32, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %26 = sitofp i32 %25 to float
  %27 = load float*, float** %7, align 8
  store float %26, float* %27, align 4
  br label %31

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %30, align 4
  store i32 0, i32* %4, align 4
  br label %36

31:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %36

32:                                               ; preds = %22
  store i32 345, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %33 = load i32, i32* @gfx_ctx_qnx__get_metrics.dpi, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float*, float** %7, align 8
  store float %34, float* %35, align 4
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %31, %29, %13, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @dpi_get_density(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
