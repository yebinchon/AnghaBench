; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_rgb2yuv.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_rgb2yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_rgb2yuv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = sitofp i32 %11 to double
  store double %12, double* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = sitofp i32 %15 to double
  store double %16, double* %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 255
  %19 = sitofp i32 %18 to double
  store double %19, double* %5, align 8
  %20 = load double, double* %3, align 8
  %21 = fmul double 2.570000e-01, %20
  %22 = fadd double 1.600000e+01, %21
  %23 = load double, double* %4, align 8
  %24 = fmul double 5.040000e-01, %23
  %25 = fadd double %22, %24
  %26 = load double, double* %5, align 8
  %27 = fmul double 9.800000e-02, %26
  %28 = fadd double %25, %27
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load double, double* %3, align 8
  %31 = fmul double -1.480000e-01, %30
  %32 = fadd double 1.280000e+02, %31
  %33 = load double, double* %4, align 8
  %34 = fmul double 2.910000e-01, %33
  %35 = fsub double %32, %34
  %36 = load double, double* %5, align 8
  %37 = fmul double 4.390000e-01, %36
  %38 = fadd double %35, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load double, double* %3, align 8
  %41 = fmul double 4.390000e-01, %40
  %42 = fadd double 1.280000e+02, %41
  %43 = load double, double* %4, align 8
  %44 = fmul double 3.680000e-01, %43
  %45 = fsub double %42, %44
  %46 = load double, double* %5, align 8
  %47 = fmul double 0x3FB22D0E56041893, %46
  %48 = fsub double %45, %47
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %1
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 0, %52 ], [ %54, %53 ]
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 0, %66 ], [ %68, %67 ]
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 255
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 255, %73 ], [ %75, %74 ]
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 255, %80 ], [ %82, %81 ]
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 255
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 255, %87 ], [ %89, %88 ]
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %93, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %96, %97
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
