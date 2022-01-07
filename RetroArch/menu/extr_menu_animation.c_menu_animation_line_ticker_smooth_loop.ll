; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth_loop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i64, i64, i64, i64*, i64*, float*, i32*, i64*, float*, float*, i64*, float*, float*)* @menu_animation_line_ticker_smooth_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_line_ticker_smooth_loop(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7, float* %8, i32* %9, i64* %10, float* %11, float* %12, i64* %13, float* %14, float* %15) #0 {
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i64 %0, i64* %17, align 8
  store i32 %1, i32* %18, align 4
  store i64 %2, i64* %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64* %6, i64** %23, align 8
  store i64* %7, i64** %24, align 8
  store float* %8, float** %25, align 8
  store i32* %9, i32** %26, align 8
  store i64* %10, i64** %27, align 8
  store float* %11, float** %28, align 8
  store float* %12, float** %29, align 8
  store i64* %13, i64** %30, align 8
  store float* %14, float** %31, align 8
  store float* %15, float** %32, align 8
  %37 = load i64, i64* %19, align 8
  %38 = call i64 @get_line_smooth_scroll_ticks(i64 %37)
  store i64 %38, i64* %33, align 8
  %39 = load i64, i64* %22, align 8
  %40 = add i64 %39, 1
  %41 = load i64, i64* %33, align 8
  %42 = mul i64 %40, %41
  store i64 %42, i64* %34, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %34, align 8
  %45 = urem i64 %43, %44
  store i64 %45, i64* %35, align 8
  %46 = load i64, i64* %35, align 8
  %47 = load i64, i64* %33, align 8
  %48 = urem i64 %46, %47
  store i64 %48, i64* %36, align 8
  %49 = load i64, i64* %35, align 8
  %50 = load i64, i64* %33, align 8
  %51 = udiv i64 %49, %50
  %52 = load i64*, i64** %24, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %36, align 8
  %54 = load i64, i64* %33, align 8
  %55 = sub i64 %54, 1
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %16
  %58 = load i64, i64* %21, align 8
  %59 = load i64*, i64** %23, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32*, i32** %26, align 8
  store i32 0, i32* %60, align 4
  br label %67

61:                                               ; preds = %16
  %62 = load i64, i64* %21, align 8
  %63 = sub i64 %62, 1
  %64 = load i64*, i64** %23, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32*, i32** %26, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %20, align 8
  %69 = uitofp i64 %68 to float
  %70 = load i64, i64* %33, align 8
  %71 = load i64, i64* %36, align 8
  %72 = sub i64 %70, %71
  %73 = uitofp i64 %72 to float
  %74 = fmul float %69, %73
  %75 = load i64, i64* %33, align 8
  %76 = uitofp i64 %75 to float
  %77 = fdiv float %74, %76
  %78 = load float*, float** %25, align 8
  store float %77, float* %78, align 4
  %79 = load i32*, i32** %26, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %67
  %83 = load i64, i64* %33, align 8
  %84 = load i64, i64* %36, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %22, align 8
  %87 = load i64*, i64** %23, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %24, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load float*, float** %25, align 8
  %92 = load float, float* %91, align 4
  %93 = load i64*, i64** %27, align 8
  %94 = load float*, float** %28, align 8
  %95 = load float*, float** %29, align 8
  %96 = load i64*, i64** %30, align 8
  %97 = load float*, float** %31, align 8
  %98 = load float*, float** %32, align 8
  %99 = call i32 @set_line_smooth_fade_parameters(i32 1, i64 %83, i64 %84, i64 %85, i64 %86, i64 %88, i64 %90, float %92, i64* %93, float* %94, float* %95, i64* %96, float* %97, float* %98)
  br label %108

100:                                              ; preds = %67
  %101 = load i64*, i64** %27, align 8
  %102 = load float*, float** %28, align 8
  %103 = load float*, float** %29, align 8
  %104 = load i64*, i64** %30, align 8
  %105 = load float*, float** %31, align 8
  %106 = load float*, float** %32, align 8
  %107 = call i32 @set_line_smooth_fade_parameters_default(i64* %101, float* %102, float* %103, i64* %104, float* %105, float* %106)
  br label %108

108:                                              ; preds = %100, %82
  ret void
}

declare dso_local i64 @get_line_smooth_scroll_ticks(i64) #1

declare dso_local i32 @set_line_smooth_fade_parameters(i32, i64, i64, i64, i64, i64, i64, float, i64*, float*, float*, i64*, float*, float*) #1

declare dso_local i32 @set_line_smooth_fade_parameters_default(i64*, float*, float*, i64*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
