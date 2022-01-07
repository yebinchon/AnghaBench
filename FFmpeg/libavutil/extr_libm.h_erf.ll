; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_libm.h_erf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_libm.h_erf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@erf.y = internal constant double 0x3FF0B81C00000000, align 8
@erf.p = internal constant [5 x double] [double 0x3FB55BB50429B6D0, double 0xBFD5A47F6049A01E, double 0xBFAA1C8CF1BE61E7, double 0xBF7FA6F563AB4349, double 0xBF35275A10372CD4], align 16
@erf.q = internal constant [5 x double] [double 1.000000e+00, double 0x3FDD1EC93C6014B3, double 0x3FB667DBDC6EE008, double 0x3F819563BB281B53, double 0x3F384EABADAC6FE0], align 16
@erf.y.1 = internal constant double 0x3FD9FADA00000000, align 8
@erf.p.2 = internal constant [6 x double] [double 0xBFB91C770D9D3C38, double 0x3FC6CC761C5CDFD0, double 0x3FC872CF216E5F4B, double 0x3FB6C17F596974E1, double 0x3F93F917B098B969, double 0x3F5D8F8DBA7BF515], align 16
@erf.q.3 = internal constant [7 x double] [double 1.000000e+00, double 0x3FFD8FBB46B1D05E, double 0x3FF6D20B0730D505, double 0x3FE27F68988B9F55, double 0x3FBFB4B28DD2F601, double 0x3F8738A6D80CCF03, double 0x3ECC5000F148A68E], align 16
@erf.y.4 = internal constant double 0x3FE0371E00000000, align 8
@erf.p.5 = internal constant [6 x double] [double 0xBF98EF3808BFBE3A, double 0x3FA3CA7645DF54C9, double 0x3FA680608A766075, double 0x3F91FD54BD6A6244, double 0x3F6A89FBECD94DB8, double 0x3F2EE97293C42FFB], align 16
@erf.q.6 = internal constant [6 x double] [double 1.000000e+00, double 0x3FF8A37DDBAA96D0, double 0x3FEF6FD9E749ACF5, double 0x3FD4D8CEE8CAF21A, double 0x3FACDF6FB1D81FE3, double 0x3F70CF09D7005348], align 16
@erf.y.7 = internal constant double 0x3FE14C6400000000, align 8
@erf.p.8 = internal constant [6 x double] [double 0x3F683066CD0BF15A, double 0x3F8C22E68CF6B2C5, double 0x3F813840E0E2140C, double 0x3F616F46DA1AF76B, double 0x3F3066D54CCD32A6, double 0x3EE7BE0B780F7E4F], align 16
@erf.q.9 = internal constant [6 x double] [double 1.000000e+00, double 0x3FF0ACC2FCB1378B, double 0x3FDC538522309AF5, double 0x3FB88993F34AAC72, double 0x3F85B48E7DD47E9B, double 0x3F3F6B2FB953735B], align 16
@erf.y.10 = internal constant double 0x3FE1DA6400000000, align 8
@erf.p.11 = internal constant [7 x double] [double 0x3F79B9A82141FDAC, double 0x3F91F5BD4085C48D, double 0xBFCB383063C1348D, double 0xBFE601C882ADF2BF, double 0xC0046A330B7811E1, double 0xC009D17FC9BEA3FB, double 0xC0068A52784ED044], align 16
@erf.q.12 = internal constant [7 x double] [double 1.000000e+00, double 0x40065732E0A14960, double 0x40261D0AE6A5CA5E, double 0x402FDC7DA2DC1122, double 0x4036EFCE09ED8250, double 0x402B0349176F08C7, double 0x4015EFB5C445A48F], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @erf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @erf(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp olt double %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = fneg double %9
  %11 = call double @erf(double %10)
  %12 = fneg double %11
  store double %12, double* %2, align 8
  br label %150

13:                                               ; preds = %1
  %14 = load double, double* %3, align 8
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store double 0.000000e+00, double* %2, align 8
  br label %150

17:                                               ; preds = %13
  %18 = load double, double* %3, align 8
  %19 = fcmp olt double %18, 1.000000e-10
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load double, double* %3, align 8
  %22 = fmul double %21, 1.125000e+00
  %23 = load double, double* %3, align 8
  %24 = fmul double %23, 0x3F6BAEA08536DA23
  %25 = fadd double %22, %24
  store double %25, double* %2, align 8
  br label %150

26:                                               ; preds = %17
  %27 = load double, double* %3, align 8
  %28 = fcmp olt double %27, 5.000000e-01
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load double, double* %3, align 8
  %31 = load double, double* %3, align 8
  %32 = fmul double %30, %31
  store double %32, double* %5, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %5, align 8
  %35 = fptosi double %34 to i32
  %36 = call double @ff_eval_poly(double* getelementptr inbounds ([5 x double], [5 x double]* @erf.p, i64 0, i64 0), i32 5, i32 %35)
  %37 = load double, double* %5, align 8
  %38 = fptosi double %37 to i32
  %39 = call double @ff_eval_poly(double* getelementptr inbounds ([5 x double], [5 x double]* @erf.q, i64 0, i64 0), i32 5, i32 %38)
  %40 = fdiv double %36, %39
  %41 = fadd double 0x3FF0B81C00000000, %40
  %42 = fmul double %33, %41
  store double %42, double* %2, align 8
  br label %150

43:                                               ; preds = %26
  %44 = load double, double* %3, align 8
  %45 = fcmp olt double %44, 1.500000e+00
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load double, double* %3, align 8
  %48 = fsub double %47, 5.000000e-01
  %49 = fptosi double %48 to i32
  %50 = call double @ff_eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @erf.p.2, i64 0, i64 0), i32 6, i32 %49)
  %51 = load double, double* %3, align 8
  %52 = fsub double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  %54 = call double @ff_eval_poly(double* getelementptr inbounds ([7 x double], [7 x double]* @erf.q.3, i64 0, i64 0), i32 7, i32 %53)
  %55 = fdiv double %50, %54
  %56 = fadd double 0x3FD9FADA00000000, %55
  store double %56, double* %4, align 8
  %57 = load double, double* %3, align 8
  %58 = fneg double %57
  %59 = load double, double* %3, align 8
  %60 = fmul double %58, %59
  %61 = call double @exp(double %60) #3
  %62 = load double, double* %3, align 8
  %63 = fdiv double %61, %62
  %64 = load double, double* %4, align 8
  %65 = fmul double %64, %63
  store double %65, double* %4, align 8
  %66 = load double, double* %4, align 8
  %67 = fsub double 1.000000e+00, %66
  store double %67, double* %2, align 8
  br label %150

68:                                               ; preds = %43
  %69 = load double, double* %3, align 8
  %70 = fcmp olt double %69, 2.500000e+00
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load double, double* %3, align 8
  %73 = fsub double %72, 1.500000e+00
  %74 = fptosi double %73 to i32
  %75 = call double @ff_eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @erf.p.5, i64 0, i64 0), i32 6, i32 %74)
  %76 = load double, double* %3, align 8
  %77 = fsub double %76, 1.500000e+00
  %78 = fptosi double %77 to i32
  %79 = call double @ff_eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @erf.q.6, i64 0, i64 0), i32 6, i32 %78)
  %80 = fdiv double %75, %79
  %81 = fadd double 0x3FE0371E00000000, %80
  store double %81, double* %4, align 8
  %82 = load double, double* %3, align 8
  %83 = fneg double %82
  %84 = load double, double* %3, align 8
  %85 = fmul double %83, %84
  %86 = call double @exp(double %85) #3
  %87 = load double, double* %3, align 8
  %88 = fdiv double %86, %87
  %89 = load double, double* %4, align 8
  %90 = fmul double %89, %88
  store double %90, double* %4, align 8
  %91 = load double, double* %4, align 8
  %92 = fsub double 1.000000e+00, %91
  store double %92, double* %2, align 8
  br label %150

93:                                               ; preds = %68
  %94 = load double, double* %3, align 8
  %95 = fcmp olt double %94, 4.500000e+00
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load double, double* %3, align 8
  %98 = fsub double %97, 3.500000e+00
  %99 = fptosi double %98 to i32
  %100 = call double @ff_eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @erf.p.8, i64 0, i64 0), i32 6, i32 %99)
  %101 = load double, double* %3, align 8
  %102 = fsub double %101, 3.500000e+00
  %103 = fptosi double %102 to i32
  %104 = call double @ff_eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @erf.q.9, i64 0, i64 0), i32 6, i32 %103)
  %105 = fdiv double %100, %104
  %106 = fadd double 0x3FE14C6400000000, %105
  store double %106, double* %4, align 8
  %107 = load double, double* %3, align 8
  %108 = fneg double %107
  %109 = load double, double* %3, align 8
  %110 = fmul double %108, %109
  %111 = call double @exp(double %110) #3
  %112 = load double, double* %3, align 8
  %113 = fdiv double %111, %112
  %114 = load double, double* %4, align 8
  %115 = fmul double %114, %113
  store double %115, double* %4, align 8
  %116 = load double, double* %4, align 8
  %117 = fsub double 1.000000e+00, %116
  store double %117, double* %2, align 8
  br label %150

118:                                              ; preds = %93
  %119 = load double, double* %3, align 8
  %120 = fcmp olt double %119, 5.920000e+00
  br i1 %120, label %121, label %143

121:                                              ; preds = %118
  %122 = load double, double* %3, align 8
  %123 = fdiv double 1.000000e+00, %122
  %124 = fptosi double %123 to i32
  %125 = call double @ff_eval_poly(double* getelementptr inbounds ([7 x double], [7 x double]* @erf.p.11, i64 0, i64 0), i32 7, i32 %124)
  %126 = load double, double* %3, align 8
  %127 = fdiv double 1.000000e+00, %126
  %128 = fptosi double %127 to i32
  %129 = call double @ff_eval_poly(double* getelementptr inbounds ([7 x double], [7 x double]* @erf.q.12, i64 0, i64 0), i32 7, i32 %128)
  %130 = fdiv double %125, %129
  %131 = fadd double 0x3FE1DA6400000000, %130
  store double %131, double* %4, align 8
  %132 = load double, double* %3, align 8
  %133 = fneg double %132
  %134 = load double, double* %3, align 8
  %135 = fmul double %133, %134
  %136 = call double @exp(double %135) #3
  %137 = load double, double* %3, align 8
  %138 = fdiv double %136, %137
  %139 = load double, double* %4, align 8
  %140 = fmul double %139, %138
  store double %140, double* %4, align 8
  %141 = load double, double* %4, align 8
  %142 = fsub double 1.000000e+00, %141
  store double %142, double* %2, align 8
  br label %150

143:                                              ; preds = %118
  %144 = load double, double* %3, align 8
  %145 = load double, double* %3, align 8
  %146 = fcmp une double %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load double, double* %3, align 8
  store double %148, double* %2, align 8
  br label %150

149:                                              ; preds = %143
  store double 1.000000e+00, double* %2, align 8
  br label %150

150:                                              ; preds = %149, %147, %121, %96, %71, %46, %29, %20, %16, %8
  %151 = load double, double* %2, align 8
  ret double %151
}

declare dso_local double @ff_eval_poly(double*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
