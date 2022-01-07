; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_preservel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_preservel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float)* @preservel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preservel(float* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %13 = load float*, float** %5, align 8
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %6, align 8
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %7, align 8
  %18 = load float, float* %17, align 4
  %19 = call float @FFMAX3(float %14, float %16, float %18)
  store float %19, float* %9, align 4
  %20 = load float*, float** %5, align 8
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %6, align 8
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %7, align 8
  %25 = load float, float* %24, align 4
  %26 = call float @FFMIN3(float %21, float %23, float %25)
  store float %26, float* %10, align 4
  %27 = load float, float* %8, align 4
  %28 = fpext float %27 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fptrunc double %29 to float
  store float %30, float* %8, align 4
  %31 = load float*, float** %5, align 8
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %6, align 8
  %34 = load float, float* %33, align 4
  %35 = fcmp oeq float %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load float*, float** %6, align 8
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %7, align 8
  %40 = load float, float* %39, align 4
  %41 = fcmp oeq float %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store float 0.000000e+00, float* %11, align 4
  br label %104

43:                                               ; preds = %36, %4
  %44 = load float, float* %9, align 4
  %45 = load float*, float** %5, align 8
  %46 = load float, float* %45, align 4
  %47 = fcmp oeq float %44, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load float*, float** %6, align 8
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %7, align 8
  %52 = load float, float* %51, align 4
  %53 = fsub float %50, %52
  %54 = load float, float* %9, align 4
  %55 = load float, float* %10, align 4
  %56 = fsub float %54, %55
  %57 = fdiv float %53, %56
  %58 = fpext float %57 to double
  %59 = fadd double 0.000000e+00, %58
  %60 = fmul double 6.000000e+01, %59
  %61 = fptrunc double %60 to float
  store float %61, float* %11, align 4
  br label %103

62:                                               ; preds = %43
  %63 = load float, float* %9, align 4
  %64 = load float*, float** %6, align 8
  %65 = load float, float* %64, align 4
  %66 = fcmp oeq float %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load float*, float** %7, align 8
  %69 = load float, float* %68, align 4
  %70 = load float*, float** %5, align 8
  %71 = load float, float* %70, align 4
  %72 = fsub float %69, %71
  %73 = load float, float* %9, align 4
  %74 = load float, float* %10, align 4
  %75 = fsub float %73, %74
  %76 = fdiv float %72, %75
  %77 = fpext float %76 to double
  %78 = fadd double 2.000000e+00, %77
  %79 = fmul double 6.000000e+01, %78
  %80 = fptrunc double %79 to float
  store float %80, float* %11, align 4
  br label %102

81:                                               ; preds = %62
  %82 = load float, float* %9, align 4
  %83 = load float*, float** %7, align 8
  %84 = load float, float* %83, align 4
  %85 = fcmp oeq float %82, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load float*, float** %5, align 8
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %6, align 8
  %90 = load float, float* %89, align 4
  %91 = fsub float %88, %90
  %92 = load float, float* %9, align 4
  %93 = load float, float* %10, align 4
  %94 = fsub float %92, %93
  %95 = fdiv float %91, %94
  %96 = fpext float %95 to double
  %97 = fadd double 4.000000e+00, %96
  %98 = fmul double 6.000000e+01, %97
  %99 = fptrunc double %98 to float
  store float %99, float* %11, align 4
  br label %101

100:                                              ; preds = %81
  store float 0.000000e+00, float* %11, align 4
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %67
  br label %103

103:                                              ; preds = %102, %48
  br label %104

104:                                              ; preds = %103, %42
  %105 = load float, float* %11, align 4
  %106 = fpext float %105 to double
  %107 = fcmp olt double %106, 0.000000e+00
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load float, float* %11, align 4
  %110 = fpext float %109 to double
  %111 = fadd double %110, 3.600000e+02
  %112 = fptrunc double %111 to float
  store float %112, float* %11, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load float, float* %9, align 4
  %115 = fpext float %114 to double
  %116 = fcmp oeq double %115, 0.000000e+00
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load float, float* %10, align 4
  %119 = fpext float %118 to double
  %120 = fcmp oeq double %119, 1.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %113
  store float 0.000000e+00, float* %12, align 4
  br label %137

122:                                              ; preds = %117
  %123 = load float, float* %9, align 4
  %124 = load float, float* %10, align 4
  %125 = fsub float %123, %124
  %126 = fpext float %125 to double
  %127 = load float, float* %8, align 4
  %128 = fpext float %127 to double
  %129 = fmul double 2.000000e+00, %128
  %130 = fsub double %129, 1.000000e+00
  %131 = fptosi double %130 to i32
  %132 = call i32 @FFABS(i32 %131)
  %133 = sitofp i32 %132 to double
  %134 = fsub double 1.000000e+00, %133
  %135 = fdiv double %126, %134
  %136 = fptrunc double %135 to float
  store float %136, float* %12, align 4
  br label %137

137:                                              ; preds = %122, %121
  %138 = load float, float* %11, align 4
  %139 = load float, float* %12, align 4
  %140 = load float, float* %8, align 4
  %141 = call float @hfun(i32 0, float %138, float %139, float %140)
  %142 = load float*, float** %5, align 8
  store float %141, float* %142, align 4
  %143 = load float, float* %11, align 4
  %144 = load float, float* %12, align 4
  %145 = load float, float* %8, align 4
  %146 = call float @hfun(i32 8, float %143, float %144, float %145)
  %147 = load float*, float** %6, align 8
  store float %146, float* %147, align 4
  %148 = load float, float* %11, align 4
  %149 = load float, float* %12, align 4
  %150 = load float, float* %8, align 4
  %151 = call float @hfun(i32 4, float %148, float %149, float %150)
  %152 = load float*, float** %7, align 8
  store float %151, float* %152, align 4
  ret void
}

declare dso_local float @FFMAX3(float, float, float) #1

declare dso_local float @FFMIN3(float, float, float) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local float @hfun(i32, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
