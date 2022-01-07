; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c__ccv_rgb_to_luv.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c__ccv_rgb_to_luv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float*, float*, float*)* @_ccv_rgb_to_luv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_rgb_to_luv(float %0, float %1, float %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %28 = load float, float* %7, align 4
  %29 = fmul float 0x3FDA65A140000000, %28
  %30 = load float, float* %8, align 4
  %31 = fmul float 0x3FD6E29740000000, %30
  %32 = fadd float %29, %31
  %33 = load float, float* %9, align 4
  %34 = fmul float 0x3FC71819E0000000, %33
  %35 = fadd float %32, %34
  store float %35, float* %13, align 4
  %36 = load float, float* %7, align 4
  %37 = fmul float 0x3FCB38CDA0000000, %36
  %38 = load float, float* %8, align 4
  %39 = fmul float 0x3FE6E29740000000, %38
  %40 = fadd float %37, %39
  %41 = load float, float* %9, align 4
  %42 = fmul float 0x3FB279AAE0000000, %41
  %43 = fadd float %40, %42
  store float %43, float* %14, align 4
  %44 = load float, float* %7, align 4
  %45 = fmul float 0x3F93CC4AC0000000, %44
  %46 = load float, float* %8, align 4
  %47 = fmul float 0x3FBE836EC0000000, %46
  %48 = fadd float %45, %47
  %49 = load float, float* %9, align 4
  %50 = fmul float 0x3FEE684280000000, %49
  %51 = fadd float %48, %50
  store float %51, float* %15, align 4
  store float 0x3FD4037D60000000, float* %16, align 4
  store float 0x3FD50E9920000000, float* %17, align 4
  store float 0x40194A8340000000, float* %18, align 4
  store float 0x3FC95297C0000000, float* %19, align 4
  store float 0x3FDDF92040000000, float* %20, align 4
  %52 = load float, float* %13, align 4
  %53 = load float, float* %14, align 4
  %54 = fmul float 1.500000e+01, %53
  %55 = fadd float %52, %54
  %56 = load float, float* %15, align 4
  %57 = fmul float 3.000000e+00, %56
  %58 = fadd float %55, %57
  %59 = load float, float* @FLT_EPSILON, align 4
  %60 = call float @ccv_max(float %58, float %59)
  store float %60, float* %21, align 4
  %61 = load float, float* %13, align 4
  %62 = fmul float 4.000000e+00, %61
  %63 = load float, float* %21, align 4
  %64 = fdiv float %62, %63
  store float %64, float* %22, align 4
  %65 = load float, float* %14, align 4
  %66 = fmul float 9.000000e+00, %65
  %67 = load float, float* %21, align 4
  %68 = fdiv float %66, %67
  store float %68, float* %23, align 4
  %69 = load float, float* %14, align 4
  %70 = call float @fast_cube_root(float %69)
  store float %70, float* %24, align 4
  %71 = load float, float* %24, align 4
  %72 = fmul float 1.160000e+02, %71
  %73 = fsub float %72, 1.600000e+01
  %74 = call float @ccv_max(float 0.000000e+00, float %73)
  store float %74, float* %25, align 4
  %75 = load float, float* %25, align 4
  %76 = fmul float 1.300000e+01, %75
  %77 = load float, float* %22, align 4
  %78 = fsub float %77, 0x3FC95297C0000000
  %79 = fmul float %76, %78
  store float %79, float* %26, align 4
  %80 = load float, float* %25, align 4
  %81 = fmul float 1.300000e+01, %80
  %82 = load float, float* %23, align 4
  %83 = fsub float %82, 0x3FDDF92040000000
  %84 = fmul float %81, %83
  store float %84, float* %27, align 4
  %85 = load float, float* %25, align 4
  %86 = fmul float %85, 0x4004666660000000
  %87 = load float*, float** %10, align 8
  store float %86, float* %87, align 4
  %88 = load float, float* %26, align 4
  %89 = fadd float %88, 1.340000e+02
  %90 = fmul float %89, 0x3FE70D0460000000
  %91 = load float*, float** %11, align 8
  store float %90, float* %91, align 4
  %92 = load float, float* %27, align 4
  %93 = fadd float %92, 1.400000e+02
  %94 = fmul float %93, 0x3FEF252140000000
  %95 = load float*, float** %12, align 8
  store float %94, float* %95, align 4
  ret void
}

declare dso_local float @ccv_max(float, float) #1

declare dso_local float @fast_cube_root(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
