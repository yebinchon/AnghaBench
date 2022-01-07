; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_yuv2rgb.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_yuv2rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_yuv2rgb(i32 %0) #0 {
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
  %21 = fsub double %20, 1.600000e+01
  %22 = fmul double 1.164000e+00, %21
  %23 = load double, double* %4, align 8
  %24 = fsub double %23, 1.280000e+02
  %25 = fmul double 1.596000e+00, %24
  %26 = fadd double %22, %25
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load double, double* %3, align 8
  %29 = fsub double %28, 1.600000e+01
  %30 = fmul double 1.164000e+00, %29
  %31 = load double, double* %5, align 8
  %32 = fsub double %31, 1.280000e+02
  %33 = fmul double 3.920000e-01, %32
  %34 = fsub double %30, %33
  %35 = load double, double* %4, align 8
  %36 = fsub double %35, 1.280000e+02
  %37 = fmul double 0x3FEA04189374BC6A, %36
  %38 = fsub double %34, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load double, double* %3, align 8
  %41 = fsub double %40, 1.600000e+01
  %42 = fmul double 1.164000e+00, %41
  %43 = load double, double* %5, align 8
  %44 = fsub double %43, 1.280000e+02
  %45 = fmul double 2.017000e+00, %44
  %46 = fadd double %42, %45
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  br label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 255
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 255, %71 ], [ %73, %72 ]
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 255
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 255, %78 ], [ %80, %79 ]
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 255
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 255, %85 ], [ %87, %86 ]
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 16
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %91, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %94, %95
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
