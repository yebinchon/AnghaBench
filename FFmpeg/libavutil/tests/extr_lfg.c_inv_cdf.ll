; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_lfg.c_inv_cdf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_lfg.c_inv_cdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.inv_cdf.a = private unnamed_addr constant [4 x double] [double 0x40040D931B28620D, double 0xC0329D70AE54A3DE, double 0x4044B212C473C6FC, double 0xC03970E957377778], align 16
@__const.inv_cdf.b = private unnamed_addr constant [4 x double] [double 0xC020F2700655072D, double 0x403715579181502C, double 0xC0350FEF0701E57D, double 0x40090BF020558A47], align 16
@__const.inv_cdf.c = private unnamed_addr constant [9 x double] [double 0x3FD59932C3E40368, double 0x3FEF3CC6CF8BC12D, double 0x3FC4950726690682, double 0x3F9C4EAD73E44237, double 0x3F6F7643E53E6785, double 0x3F39E62EA0A98846, double 0x3F00DEB205F58208, double 0x3E9361D5709B7B56, double 0x3E9A93C50A02D5AD], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @inv_cdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @inv_cdf(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca [4 x double], align 16
  %4 = alloca [4 x double], align 16
  %5 = alloca [9 x double], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %2, align 8
  %9 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x double]* @__const.inv_cdf.a to i8*), i64 32, i1 false)
  %10 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x double]* @__const.inv_cdf.b to i8*), i64 32, i1 false)
  %11 = bitcast [9 x double]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([9 x double]* @__const.inv_cdf.c to i8*), i64 72, i1 false)
  %12 = load double, double* %2, align 8
  %13 = fsub double %12, 5.000000e-01
  store double %13, double* %7, align 8
  %14 = load double, double* %7, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fcmp olt double %15, 4.200000e-01
  br i1 %16, label %17, label %61

17:                                               ; preds = %1
  %18 = load double, double* %7, align 8
  %19 = load double, double* %7, align 8
  %20 = fmul double %18, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 3
  %23 = load double, double* %22, align 8
  %24 = load double, double* %8, align 8
  %25 = fmul double %23, %24
  %26 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 2
  %27 = load double, double* %26, align 16
  %28 = fadd double %25, %27
  %29 = load double, double* %8, align 8
  %30 = fmul double %28, %29
  %31 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 1
  %32 = load double, double* %31, align 8
  %33 = fadd double %30, %32
  %34 = load double, double* %8, align 8
  %35 = fmul double %33, %34
  %36 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %37 = load double, double* %36, align 16
  %38 = fadd double %35, %37
  %39 = fmul double %21, %38
  %40 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %41 = load double, double* %40, align 8
  %42 = load double, double* %8, align 8
  %43 = fmul double %41, %42
  %44 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %45 = load double, double* %44, align 16
  %46 = fadd double %43, %45
  %47 = load double, double* %8, align 8
  %48 = fmul double %46, %47
  %49 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %50 = load double, double* %49, align 8
  %51 = fadd double %48, %50
  %52 = load double, double* %8, align 8
  %53 = fmul double %51, %52
  %54 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %55 = load double, double* %54, align 16
  %56 = fadd double %53, %55
  %57 = load double, double* %8, align 8
  %58 = fmul double %56, %57
  %59 = fadd double %58, 1.000000e+00
  %60 = fdiv double %39, %59
  store double %60, double* %6, align 8
  br label %121

61:                                               ; preds = %1
  %62 = load double, double* %2, align 8
  store double %62, double* %6, align 8
  %63 = load double, double* %7, align 8
  %64 = fcmp ogt double %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load double, double* %2, align 8
  %67 = fsub double 1.000000e+00, %66
  store double %67, double* %6, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = load double, double* %6, align 8
  %70 = call double @log(double %69) #4
  %71 = fneg double %70
  %72 = call double @log(double %71) #4
  store double %72, double* %6, align 8
  %73 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 0
  %74 = load double, double* %73, align 16
  %75 = load double, double* %6, align 8
  %76 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 1
  %77 = load double, double* %76, align 8
  %78 = load double, double* %6, align 8
  %79 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 2
  %80 = load double, double* %79, align 16
  %81 = load double, double* %6, align 8
  %82 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 3
  %83 = load double, double* %82, align 8
  %84 = load double, double* %6, align 8
  %85 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 4
  %86 = load double, double* %85, align 16
  %87 = load double, double* %6, align 8
  %88 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 5
  %89 = load double, double* %88, align 8
  %90 = load double, double* %6, align 8
  %91 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 6
  %92 = load double, double* %91, align 16
  %93 = load double, double* %6, align 8
  %94 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 7
  %95 = load double, double* %94, align 8
  %96 = load double, double* %6, align 8
  %97 = getelementptr inbounds [9 x double], [9 x double]* %5, i64 0, i64 8
  %98 = load double, double* %97, align 16
  %99 = fmul double %96, %98
  %100 = fadd double %95, %99
  %101 = fmul double %93, %100
  %102 = fadd double %92, %101
  %103 = fmul double %90, %102
  %104 = fadd double %89, %103
  %105 = fmul double %87, %104
  %106 = fadd double %86, %105
  %107 = fmul double %84, %106
  %108 = fadd double %83, %107
  %109 = fmul double %81, %108
  %110 = fadd double %80, %109
  %111 = fmul double %78, %110
  %112 = fadd double %77, %111
  %113 = fmul double %75, %112
  %114 = fadd double %74, %113
  store double %114, double* %6, align 8
  %115 = load double, double* %7, align 8
  %116 = fcmp olt double %115, 0.000000e+00
  br i1 %116, label %117, label %120

117:                                              ; preds = %68
  %118 = load double, double* %6, align 8
  %119 = fneg double %118
  store double %119, double* %6, align 8
  br label %120

120:                                              ; preds = %117, %68
  br label %121

121:                                              ; preds = %120, %17
  %122 = load double, double* %6, align 8
  ret double %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
