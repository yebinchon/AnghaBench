; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_set_lcd_gamma_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_set_lcd_gamma_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i32* null, align 8
@gamma_was_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_lcd_gamma_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lcd_gamma_(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %14, 1.000000e+02
  store float %15, float* %5, align 4
  %16 = load float, float* %5, align 4
  %17 = fdiv float 1.000000e+00, %16
  store float %17, float* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 100
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32*, i32** @memregs, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5184
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -4097
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** @memregs, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5294
  store i32 0, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %135, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %138

31:                                               ; preds = %28
  store i16 143, i16* %9, align 2
  store i16 177, i16* %10, align 2
  store i16 97, i16* %11, align 2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %36, 6.400000e+01
  %38 = fadd float %37, 2.000000e+00
  %39 = call i32 @powf(float %38, float 2.000000e+00)
  %40 = sub nsw i32 0, %39
  %41 = call i32 @exp(i32 %40)
  %42 = mul nsw i32 -128, %41
  %43 = load i32, i32* %6, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, 6.400000e+01
  %46 = fadd float %45, 1.000000e+00
  %47 = call i32 @powf(float %46, float 2.000000e+00)
  %48 = sub nsw i32 0, %47
  %49 = call i32 @exp(i32 %48)
  %50 = mul nsw i32 -64, %49
  %51 = add nsw i32 %42, %50
  %52 = load i32, i32* %6, align 4
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, 6.400000e+01
  %55 = fsub float %54, 1.000000e+00
  %56 = call i32 @powf(float %55, float 2.000000e+00)
  %57 = sub nsw i32 0, %56
  %58 = call i32 @exp(i32 %57)
  %59 = mul nsw i32 97, %58
  %60 = add nsw i32 %51, %59
  %61 = load i32, i32* %6, align 4
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %62, 6.400000e+01
  %64 = fsub float %63, 2.000000e+00
  %65 = call i32 @powf(float %64, float 2.000000e+00)
  %66 = sub nsw i32 0, %65
  %67 = call i32 @exp(i32 %66)
  %68 = mul nsw i32 143, %67
  %69 = add nsw i32 %60, %68
  %70 = load i32, i32* %6, align 4
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, 6.400000e+01
  %73 = fsub float %72, 3.000000e+00
  %74 = call i32 @powf(float %73, float 2.000000e+00)
  %75 = sub nsw i32 0, %74
  %76 = call i32 @exp(i32 %75)
  %77 = mul nsw i32 177, %76
  %78 = add nsw i32 %69, %77
  %79 = load i32, i32* %6, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %80, 6.400000e+01
  %82 = fsub float %81, 4.000000e+00
  %83 = call i32 @powf(float %82, float 2.000000e+00)
  %84 = sub nsw i32 0, %83
  %85 = call i32 @exp(i32 %84)
  %86 = mul nsw i32 256, %85
  %87 = add nsw i32 %78, %86
  %88 = load i32, i32* %6, align 4
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %89, 6.400000e+01
  %91 = fsub float %90, 5.000000e+00
  %92 = call i32 @powf(float %91, float 2.000000e+00)
  %93 = sub nsw i32 0, %92
  %94 = call i32 @exp(i32 %93)
  %95 = mul nsw i32 320, %94
  %96 = add nsw i32 %87, %95
  %97 = load i32, i32* %6, align 4
  %98 = sitofp i32 %97 to float
  %99 = fdiv float %98, 6.400000e+01
  %100 = fsub float %99, 6.000000e+00
  %101 = call i32 @powf(float %100, float 2.000000e+00)
  %102 = sub nsw i32 0, %101
  %103 = call i32 @exp(i32 %102)
  %104 = mul nsw i32 384, %103
  %105 = add nsw i32 %96, %104
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %106, 0x3FFC5CB89D6ADF72
  store double %107, double* %12, align 8
  %108 = load double, double* %12, align 8
  %109 = fadd double %108, 5.000000e-01
  store double %109, double* %12, align 8
  br label %113

110:                                              ; preds = %31
  %111 = load i32, i32* %6, align 4
  %112 = sitofp i32 %111 to double
  store double %112, double* %12, align 8
  br label %113

113:                                              ; preds = %110, %34
  %114 = load double, double* %12, align 8
  %115 = fdiv double %114, 2.550000e+02
  %116 = load float, float* %5, align 4
  %117 = call double @pow(double %115, float %116)
  %118 = fmul double 2.550000e+02, %117
  %119 = fptoui double %118 to i8
  store i8 %119, i8* %7, align 1
  %120 = load i8, i8* %7, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 8
  %123 = load i8, i8* %7, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %122, %124
  %126 = trunc i32 %125 to i16
  store i16 %126, i16* %8, align 2
  %127 = load i16, i16* %8, align 2
  %128 = zext i16 %127 to i32
  %129 = load i32*, i32** @memregs, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5295
  store i32 %128, i32* %130, align 4
  %131 = load i8, i8* %7, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32*, i32** @memregs, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5295
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %113
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %28

138:                                              ; preds = %28
  store i32 1, i32* @gamma_was_changed, align 4
  ret void
}

declare dso_local i32 @exp(i32) #1

declare dso_local i32 @powf(float, float) #1

declare dso_local double @pow(double, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
