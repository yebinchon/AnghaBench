; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_rgb5a3.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_rgb5a3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @argb32_to_rgb5a3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argb32_to_rgb5a3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 255
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = lshr i32 %21, 5
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %23, 255
  br i1 %24, label %25, label %84

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = lshr i32 %26, 4
  store i32 %27, i32* %8, align 4
  store float 1.000000e+00, float* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = uitofp i32 %31 to float
  %33 = fpext float %32 to double
  %34 = fmul double %33, 0x3FB1111111111111
  %35 = load i32, i32* %7, align 4
  %36 = uitofp i32 %35 to float
  %37 = fpext float %36 to double
  %38 = fmul double %37, 0x3FC2492492492492
  %39 = fdiv double %34, %38
  %40 = fptrunc double %39 to float
  store float %40, float* %9, align 4
  br label %41

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %4, align 4
  %43 = uitofp i32 %42 to float
  %44 = load float, float* %9, align 4
  %45 = fmul float %43, %44
  %46 = fpext float %45 to double
  %47 = fadd double %46, 5.000000e-01
  %48 = fptoui double %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = uitofp i32 %49 to float
  %51 = load float, float* %9, align 4
  %52 = fmul float %50, %51
  %53 = fpext float %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fptoui double %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = uitofp i32 %56 to float
  %58 = load float, float* %9, align 4
  %59 = fmul float %57, %58
  %60 = fpext float %59 to double
  %61 = fadd double %60, 5.000000e-01
  %62 = fptoui double %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ule i32 %63, 255
  br i1 %64, label %65, label %67

65:                                               ; preds = %41
  %66 = load i32, i32* %4, align 4
  br label %68

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 255, %67 ]
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ule i32 %70, 255
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 255, %74 ]
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ule i32 %77, 255
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 255, %81 ]
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %1
  %85 = load i32, i32* %4, align 4
  %86 = lshr i32 %85, 4
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = lshr i32 %87, 4
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = lshr i32 %89, 4
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 12
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %92, %94
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 %96, 4
  %98 = or i32 %95, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %98, %99
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
