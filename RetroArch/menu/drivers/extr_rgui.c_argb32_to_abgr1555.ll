; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_abgr1555.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_abgr1555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @argb32_to_abgr1555 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argb32_to_abgr1555(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 24
  %10 = and i32 %9, 255
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 255
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 255
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = uitofp i32 %22 to float
  %24 = fpext float %23 to double
  %25 = fmul double %24, 0x3F70101010101010
  %26 = fptrunc double %25 to float
  store float %26, float* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = uitofp i32 %27 to float
  %29 = load float, float* %7, align 4
  %30 = fmul float %28, %29
  %31 = fpext float %30 to double
  %32 = fadd double %31, 5.000000e-01
  %33 = fptoui double %32 to i32
  %34 = and i32 %33, 255
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = uitofp i32 %35 to float
  %37 = load float, float* %7, align 4
  %38 = fmul float %36, %37
  %39 = fpext float %38 to double
  %40 = fadd double %39, 5.000000e-01
  %41 = fptoui double %40 to i32
  %42 = and i32 %41, 255
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = uitofp i32 %43 to float
  %45 = load float, float* %7, align 4
  %46 = fmul float %44, %45
  %47 = fpext float %46 to double
  %48 = fadd double %47, 5.000000e-01
  %49 = fptoui double %48 to i32
  %50 = and i32 %49, 255
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %21, %1
  %52 = load i32, i32* %4, align 4
  %53 = lshr i32 %52, 3
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = lshr i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = lshr i32 %56, 3
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 10
  %60 = or i32 32768, %59
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 5
  %63 = or i32 %60, %62
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %63, %64
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
