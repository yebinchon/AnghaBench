; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_android_ctx.c_android_gfx_ctx_get_metrics.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_android_ctx.c_android_gfx_ctx_get_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@android_gfx_ctx_get_metrics.dpi = internal global i32 -1, align 4
@PROP_VALUE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, float*)* @android_gfx_ctx_get_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_gfx_ctx_get_metrics(i8* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %43 [
    i32 129, label %12
    i32 130, label %13
    i32 131, label %14
    i32 128, label %42
  ]

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* @PROP_VALUE_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 16
  %23 = trunc i64 %19 to i32
  %24 = call i32 @dpi_get_density(i8* %21, i32 %23)
  %25 = call i32 @string_is_empty(i8* %21)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 3, i32* %10, align 4
  br label %34

28:                                               ; preds = %17
  %29 = call i32 @atoi(i8* %21)
  store i32 %29, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %30 = load i32, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 3, i32* %10, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %27, %33
  %35 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %52 [
    i32 0, label %37
    i32 3, label %46
  ]

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %40 = sitofp i32 %39 to float
  %41 = load float*, float** %7, align 8
  store float %40, float* %41, align 4
  br label %45

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  %44 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %44, align 4
  store i32 0, i32* %4, align 4
  br label %50

45:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %50

46:                                               ; preds = %34
  store i32 90, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %47 = load i32, i32* @android_gfx_ctx_get_metrics.dpi, align 4
  %48 = sitofp i32 %47 to float
  %49 = load float*, float** %7, align 8
  store float %48, float* %49, align 4
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %45, %43, %13, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51

52:                                               ; preds = %34
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dpi_get_density(i8*, i32) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
